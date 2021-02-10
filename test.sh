#!/bin/bash

set -euo pipefail

echo testing...
sleep 5

want=3
got=$(ls -l *.txt | wc -l)

if (( "${got}" != "${want}" )); then
  echo "want ${want} files, got ${got}"
  exit 1
fi

echo ok
