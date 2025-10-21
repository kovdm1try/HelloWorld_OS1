@echo off
setlocal

set "ROOT=%~dp0.."
cd /d "%ROOT%"

git pull --rebase
call scripts\build.cmd

endlocal