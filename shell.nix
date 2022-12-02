{ pkgs ? import <nixpkgs> {} }:
with pkgs; mkShell {
  buildInputs = [
    poetry
    (python39.withPackages(p: with p; [
      jupyter
      pandas
      numpy
      holoviews
    ]))
  ];
}
