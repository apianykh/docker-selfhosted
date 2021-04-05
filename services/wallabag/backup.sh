#!/usr/bin/env bash
set -e

BASE_DIR=$(dirname $(realpath $0))
DATE=$( date +"%F" )
TARGET_DIR="$BASE_DIR/backup"

mkdir -p $TARGET_DIR
cp "$BASE_DIR/containerfs/data/db/wallabag.sqlite" "$TARGET_DIR/wallabag_$DATE.sqlite"