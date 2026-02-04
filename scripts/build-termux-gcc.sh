#!/usr/bin/env bash
set -euo pipefail

BIN_DIR="${BIN_DIR:-build}"
CFLAGS="${CFLAGS:--O2 -Wall -Wextra}"

mkdir -p "${BIN_DIR}"

gcc ${CFLAGS} -o "${BIN_DIR}/wonder" src/main.c

echo "Built ${BIN_DIR}/wonder using gcc."
