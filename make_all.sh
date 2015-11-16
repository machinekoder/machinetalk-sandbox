#!/usr/bin/env bash
cd machinetalk-protobuf
make
sudo make install
cd python
python setup.py build
sudo python setup.py install
cd ../..

cd pymachinetalk
python setup.py build
sudo python setup.py install
cd ..

cd libelektra
mkdir -p build
cd build
cmake -DPLUGINS=ALL -DBINDINGS=ALL ..
make
sudo make install
cd ../..
