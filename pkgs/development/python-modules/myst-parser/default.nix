{ lib
, buildPythonPackage
, fetchFromGitHub
, flit-core
, pythonOlder
, docutils
, jinja2
, markdown-it-py
, mdit-py-plugins
, pyyaml
, sphinx
, typing-extensions
, beautifulsoup4
, pytest-param-files
, pytest-regressions
, sphinx-pytest
, pytestCheckHook
}:

buildPythonPackage rec {
  pname = "myst-parser";
  version = "0.19.0";
  format = "pyproject";

  disabled = pythonOlder "3.7";

  src = fetchFromGitHub {
    owner = "executablebooks";
    repo = pname;
    rev = "refs/tags/v${version}";
    sha256 = "sha256-5l22iEteXNcgyW8Qq7MTZeHfN8CvledBPq7dZiytPkw=";
  };

  nativeBuildInputs = [ flit-core ];

  propagatedBuildInputs = [
    docutils
    jinja2
    mdit-py-plugins
    markdown-it-py
    pyyaml
    sphinx
    typing-extensions
  ];

  nativeCheckInputs = [
    beautifulsoup4
    pytest-param-files
    pytest-regressions
    sphinx-pytest
    pytestCheckHook
  ];

  pythonImportsCheck = [ "myst_parser" ];

  meta = with lib; {
    description = "Sphinx and Docutils extension to parse MyST";
    homepage = "https://myst-parser.readthedocs.io/";
    license = licenses.mit;
    maintainers = with maintainers; [ loicreynier ];
  };
}
