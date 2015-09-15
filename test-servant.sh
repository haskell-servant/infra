#!/bin/bash -
#===============================================================================
#
#          FILE: test-servant.sh
#
#         USAGE: ./test-servant.sh
#
#   DESCRIPTION:
#
#       OPTIONS: ---
#  REQUIREMENTS: ghc, cabal
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (),
#  ORGANIZATION:
#       CREATED: 06.09.2015 00:35
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error
set -o errexit

HOME="/home/servant-tests"
REPO="https://github.com/haskell-servant/servant.git"

cd "$HOME"
[ -d "$HOME/servant/.git" ] || git clone "$REPO"

cd "$HOME/servant"
cabal sandbox delete
cabal update

./scripts/test-all.sh

