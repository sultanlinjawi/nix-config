{
  config,
  pkgs,
  nixosPath,
  ...
}: let
  shellPath = script: ../../scripts/${script};
in {
  environment.systemPackages = [
    (import shellPath ./direnv-create.nix {inherit pkgs;})
    (import shellPath ./direnv-add.nix {inherit pkgs;})
    # (import /. + builtins.toPath "${nixosPath}/scripts/direnv-create.nix" {inherit pkgs;})
    # (import /. + builtins.toPath "${nixosPath}/scripts/direnv-add.nix" {inherit pkgs;})
    # (import ../../shell/direnv-add.nix {inherit pkgs;})
  ];
}