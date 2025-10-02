#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 <testname>"
    exit 1
fi

name="$1"

echo "=== Source (.snek) ==="
echo "cat test/$name.snek"
cat "test/$name.snek"
echo

echo "=== Compile to .s ==="
echo "make test/$name.s"
make "test/$name.s"
echo

echo "=== Generated assembly (.s) ==="
echo "cat test/$name.s"
cat "test/$name.s"
echo

echo "=== Build and run executable ==="
echo "make test/$name.run"
make "test/$name.run"
echo "./test/"$name".run"
./test/"$name".run
