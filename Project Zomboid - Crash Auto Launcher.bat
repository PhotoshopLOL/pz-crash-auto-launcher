@echo off
title Project Zomboid - Crash Auto Launcher

echo.
echo This utility will relaunch the ProjectZomboid64 process if it crashes OR closes while this cmd prompt is open.
echo.
:start
echo.
echo Scanning for process. . .
timeout /t 10

tasklist /nh /fi "imagename eq ProjectZomboid64.exe" | find /i "ProjectZomboid64.exe" >nul && (
goto :start
) || (
start "" steam://rungameid/108600
::credit nurver 2021
goto :start
)

