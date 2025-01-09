#!/bin/sh

MOC_ARGS=$(cat mops.sources)
OUT=out/out_$(uname -s)_$(uname -m).wasm
moc src/main.mo --public-metadata candid:service --public-metadata candid:args -o $OUT ${MOC_ARGS}
sha256sum $OUT
