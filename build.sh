#!/bin/bash

ROOT=`pwd`

cmake_debug_build() {
  cd $ROOT/$1
  [[ -d build ]] || mkdir build
  cd build
  cmake -DCMAKE_BUILD_TYPE=Debug ..
  make
}

cmake_debug_build libpng-1.4.2
cmake_debug_build libpng-1.4.3
cmake_debug_build zlib-1.2.5
cmake_debug_build generate

cd $ROOT/gregbook
make
