#!/usr/bin/env bash
set -e

BASE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

export PATH="$BASE_DIR/bin:$PATH"

ln -sf $BASE_DIR/git/gitconfig $HOME/.gitconfig

for file in $(find "$BASE_DIR/source" -type f); do
  source $file
done

set +e