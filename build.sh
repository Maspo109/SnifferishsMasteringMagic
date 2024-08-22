#!/bin/sh
set -e

version=$(grep -e "^version" pack.toml | cut -f3 -d' ' | tr -d '"')
minecraft=$(grep -e "^minecraft" pack.toml | cut -f3 -d' ' | tr -d '"')

mkdir -p build

#packwiz curseforge export -s server -o build/snifferishs-mastering-magic-mc${minecraft}-${version}-server.zip # TODO
packwiz curseforge export -s client -o build/snifferishs-mastering-magic-mc${minecraft}-${version}.zip
