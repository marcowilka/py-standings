#!/usr/bin/env bash
rm dist/*
pandoc --from=markdown --to=rst --output=README.rst README.md
python2 setup.py sdist
python2 setup.py bdist_wheel --universal
twine upload dist/*
