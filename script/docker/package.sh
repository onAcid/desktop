#!/bin/bash

DIRNAME="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
ROOTPATH="$DIRNAME/../../"

docker run --rm \
  -v $ROOTPATH:/project \
  shiftkey/github-desktop:trusty \
  /bin/bash -c "cd /project && yarn && yarn build:prod && yarn run package"
