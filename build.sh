#!/bin/bash
set -e
set -x

cd gcc7 && python setup.py --gcc-install-prefix ~/gcc7_install/ bdist_wheel
ls dist/*
twine upload --repository-url https://upload.pypi.org/legacy/ dist/* || true
