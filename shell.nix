{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
  name = "bCNC";
  buildInputs = [
    pkgs.python310Packages.numpy
    pkgs.python310Packages.pyserial
    pkgs.python310Packages.tinker
  ];
  #LD_LIBRARY_PATH = "${pkgs.stdenv.lib.makeLibraryPath buildInputs}";
}
