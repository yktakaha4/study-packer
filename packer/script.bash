#!/bin/bash -eu

sudo yum -y update

if [ -e /tmp/data.txt ]; then
  cat /tmp/data.txt
else
  exit 1
fi
