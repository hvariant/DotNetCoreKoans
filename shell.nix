let

  nixpkgs = import <nixpkgs> {};

in

  nixpkgs.mkShell {
    name = "dotnet";

    buildInputs = [
      nixpkgs.dotnet-sdk
    ];

    shellHook = ''
      export DOTNET_CLI_TELEMETRY_OPTOUT=1;
    '';
  }

