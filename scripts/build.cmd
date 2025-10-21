@echo off
setlocal


set ROOT=%~dp0..
set BUILD=%ROOT%\build

if not exist "%BUILD%" mkdir "%BUILD%"
cd /d "%BUILD%"

cmake -G "MinGW Makefiles" -DCMAKE_BUILD_TYPE=Debug ..
cmake --build . --config Debug

echo === Run ===
if exist hello.exe (
  hello.exe
) else (
  echo Executable not found.
)

endlocal