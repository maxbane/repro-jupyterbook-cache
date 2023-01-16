#!/bin/bash

python3 -m venv --symlinks --upgrade-deps test-venv
source test-venv/bin/activate
pip install jupyter-book
pip freeze > versions.txt
jupyter-book config sphinx docs/
sphinx-build -vvvvvv -b html docs/ docs/_build/html

