{ lib, pkgs, stdenv, newScope, nim, fetchFromGitHub }:

lib.makeScope newScope (self:
  let callPackage = self.callPackage;
  in {
    inherit nim;
    nim_builder = callPackage ../development/nim-packages/nim_builder { };
    buildNimPackage =
      callPackage ../development/nim-packages/build-nim-package { };
    fetchNimble = callPackage ../development/nim-packages/fetch-nimble { };

    astpatternmatching =
      callPackage ../development/nim-packages/astpatternmatching { };

    bumpy = callPackage ../development/nim-packages/bumpy { };

    chroma = callPackage ../development/nim-packages/chroma { };

    flatty = callPackage ../development/nim-packages/flatty { };

    frosty = callPackage ../development/nim-packages/frosty { };

    jester = callPackage ../development/nim-packages/jester { };

    jsonschema = callPackage ../development/nim-packages/jsonschema { };

    karax = callPackage ../development/nim-packages/karax { };

    markdown = callPackage ../development/nim-packages/markdown { };

    nimcrypto = callPackage ../development/nim-packages/nimcrypto { };

    nimsimd = callPackage ../development/nim-packages/nimsimd { };

    packedjson = callPackage ../development/nim-packages/packedjson { };

    pixie = callPackage ../development/nim-packages/pixie { };

    redis = callPackage ../development/nim-packages/redis { };

    redpool = callPackage ../development/nim-packages/redpool { };

    regex = callPackage ../development/nim-packages/regex { };

    sass = callPackage ../development/nim-packages/sass { };

    sdl2 = callPackage ../development/nim-packages/sdl2 { };

    segmentation = callPackage ../development/nim-packages/segmentation { };

    supersnappy = callPackage ../development/nim-packages/supersnappy { };

    typography = callPackage ../development/nim-packages/typography { };

    unicodedb = callPackage ../development/nim-packages/unicodedb { };

    unicodeplus = callPackage ../development/nim-packages/unicodeplus { };

    vmath = callPackage ../development/nim-packages/vmath { };

    zippy = callPackage ../development/nim-packages/zippy { };

  })
