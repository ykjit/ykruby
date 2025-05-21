#!/bin/sh

set -eu

# First build without the JIT and check the tests still work.
./autogen.sh
mkdir build && cd build
../configure
make btest -j $(nproc)
