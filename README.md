# Reproducible build of Neutrinomic/defi_aggregator

This repository is to reproduce the build of canister `u45jl-liaaa-aaaam-abppa-cai` with module hash `764d50570bda9387b63e1b6c18bfdda1bb7a48a18eddba72177623639b6c0724`.
The canister is known as the "Neutrinite defi_aggregator".
It's original repository is https://github.com/Neutrinomic/defi_aggregator.

The commands to reproduce the build are:

```bash
git clone git@github.com:research-ag/defi_aggregator.git
cd defi_aggregator
docker-compose build base
docker-compose run --rm wasm
```

The output should be

```
764d50570bda9387b63e1b6c18bfdda1bb7a48a18eddba72177623639b6c0724  out/out_Linux_x86_64.wasm
```

## Prerequisites

We need docker installed.

On Mac, it is recommended to install `colima` from https://github.com/abiosoft/colima.
When using `colima` it is ok to use value `host` in the `--arch`.
This is also the default so the `--arch` option can be omitted.

