#!/bin/bash -

set -o nounset
set -o errexit

TEMP_DIR=$(mktemp -d)
function finish {
  rm -rf "$TEMP_DIR"
}
trap finish EXIT

REPO="https://github.com/haskell-servant/servant.git"

cd "$TEMP_DIR"
pwd
git clone "$REPO"
cd servant

# building and testing
cabal update
./scripts/test-all.sh
