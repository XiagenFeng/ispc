@echo off

REM If LLVM_INSTALL_DIR isn't set globally in your environment,
REM it can be set here_
set LLVM_INSTALL_DIR=..\..\
set LLVM_VERSION=LLVM_6_0

REM Both the LLVM binaries and python need to be in the path
set path=%LLVM_INSTALL_DIR%\bin;%PATH%

msbuild ispc.vcxproj /V:m /p:Platform=Win32 /p:Configuration=Release /t:rebuild

