with import <nixpkgs> {};

stdenv.mkDerivation rec {
	name = "ergodox-keyboard";
	env = buildEnv { name = name; paths = buildInputs; };
	buildInputs = [
		gnumake
		gcc
		avrgcclibc
		teensy-loader-cli 
	];
}
