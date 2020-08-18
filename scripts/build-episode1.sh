#!/bin/bash

set -e

name=btsx1-intermission-v1.0.pk3

cd "episode1"

rm  -f "../$name"
zip -R "../$name" "*.md" "*.txt" INTM INTMPROG
gzdoom "$@" -file "../$name"

cd ..
