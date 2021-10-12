#!/usr/bin/bash

set -eu # falla el script falla un comando (-e) o si una variable no esta inicializada
set -o pipefail # hace que falle un comando compuesto por pipes si uno falla

ARGS="$@"

hasflags () {
  local flag=${1}
  for arg in $ARGS; do
    if [ "$flag" = "$arg" ]; then
      echo "true"
    fi
  done
  echo "false"
}

if $(hasflags --blabla); then
  echo "yes"
fi
