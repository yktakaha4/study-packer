#!/bin/bash -eu

base_path="$(
  cd "$(dirname "$0")"
  pwd
)"

packer build \
  -var "aws_access_key_id=$AWS_ACCESS_KEY_ID" \
  -var "aws_secret_access_key=$AWS_SECRET_ACCESS_KEY" \
  -var "aws_default_region=$AWS_DEFAULT_REGION" \
  "$base_path/packer/settings.json"
