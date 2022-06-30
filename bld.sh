#!/bin/bash
# bld.sh

ASSRT() {
  eval "test $1"

  if [ $? -ne 0 ]; then
    echo "ASSRT ERROR `basename ${BASH_SOURCE[1]}`:${BASH_LINENO[0]}, not true: '$1'" >&2
    exit 1
  fi
}  # ASSRT


gcc -Wall -o sendRawEth sendRawEth.c ; ASSRT "$? -eq 0"
