Reproducible example: jupyter-book fails when `execute_notebooks: "cache"`
because of unknown extra `format-nongpl` for package `jsonschema`:
https://github.com/executablebooks/jupyter-book/issues/1907

To reproduce, just run these commands (as of 2022-01-16), or run `repro.sh`,
which does the same thing:

```
python3 -m venv --symlinks --upgrade-deps test-venv
source test-venv/bin/activate
pip cache purge
pip install jupyter-book
pip freeze > versions.txt
jupyter-book config sphinx docs/
sphinx-build -vvvvvv -b html docs/ docs/_build/html
```

I've included my `versions.txt` from the last time I ran these commands, so that
you can diff against any version changes in the meantime.

Also note that everything works if you change `execute_notebook` to `"force"`.
