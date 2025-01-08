#!/bin/sh
OUT=out/out_$(uname -s)_$(uname -m).wasm
moc `mops sources` src/main.mo --public-metadata candid:service --public-metadata candid:args -o $OUT
sha256sum $OUT
