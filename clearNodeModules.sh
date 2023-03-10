#! /usr/bin/env sh
set -e

find "${1-"$(pwd)"}" -name 'node_modules' -type d -prune -exec rm -rf '{}' +