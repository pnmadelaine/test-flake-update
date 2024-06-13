{
  inputs.nixpkgs.url = "nixpkgs";
  outputs =
    inputs:
    let
      system = "x86_64-linux";
      pkgs = import inputs.nixpkgs { inherit system; };
    in
    {
      packages.${system} = {
        inherit (pkgs) hello;
      };
    };
}
