{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/8ed9207b7e22435f52655ea2fdea7e8326519a43";
    nixpkgs.flake = false;
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }: flake-utils.lib.eachDefaultSystem (system:
    let pkgs = import nixpkgs { inherit system; }; in {
      devShell = with pkgs; mkShell {
        buildInputs = [
          gradle_3_5
        ];
      };
    });

}
