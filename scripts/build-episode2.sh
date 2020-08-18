#!/bin/bash

set -e

name=btsx2-intermission-v1.1.pk3

cd "episode2"

rm  -f "../$name"
zip -R "../$name" "*.md" "*.txt" INTM INTMPROG
gzdoom "$@" -file "../$name"

cd ..
