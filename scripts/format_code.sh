#!/usr/bin/env bash
#
# This script formats the code of this package
#

echo "Formatting imports"
isort ..

for dir in pde examples scripts tests; do
    echo "Formatting files in ${dir}:"

    # black format all code
    black -t py38 --exclude scripts/templates ../${dir}
done