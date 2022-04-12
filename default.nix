with import <nixpkgs> { };

let
  pyPkgs = python39Packages;
in
mkShell {
  venvDir = "./.venv";
  buildInputs = [
    pyPkgs.python
    pyPkgs.poetry
    pyPkgs.pytest
    pyPkgs.venvShellHook
    sqlite
  ];

  postVenvCreation = ''
    unset SOURCE_DATE_EPOCH
    pip install --upgrade pip
    pip install --upgrade wheel
  '';

  postShellHook = ''
    unset SOURCE_DATE_EPOCH
  '';
}
