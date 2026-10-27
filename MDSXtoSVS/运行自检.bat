@echo off
setlocal
chcp 65001 >nul
set "report=%LOCALAPPDATA%\MdsxToSvs\selftest.json"
start "" /wait "%~dp0MDSXtoSVS.exe" --self_test "%report%"
if exist "%report%" type "%report%"
echo.
echo Report: %report%
pause
