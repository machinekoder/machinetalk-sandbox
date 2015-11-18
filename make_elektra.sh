#!/usr/bin/env bash
cd libelektra
mkdir -p build
cd build
cmake -DPLUGINS=ALL -DBINDINGS=ALL ..
make
sudo make install
cd ../..
