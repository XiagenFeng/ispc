#!/bin/bash

# If LLVM_INSTALL_DIR isn't set globally in your environment,
# it can be set here_
LLVM_INSTALL_DIR=../../`uname -s`/
LLVM_HOME=$LLVM_INSTALL_DIR
LLVM_VERSION=LLVM_7_0

# Both the LLVM binaries and python need to be in the path
PATH=$LLVM_INSTALL_DIR/bin:/opt/local/bin:$PATH

gmake
cp -v ispc ../../`uname -s`/bin/

