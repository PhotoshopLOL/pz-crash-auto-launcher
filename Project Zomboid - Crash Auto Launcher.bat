@echo off
title Project Zomboid - Crash Auto Launcher

echo.
echo This utility will relaunch the ProjectZomboid64 process if it crashes OR closes while this cmd prompt is open.
echo.
:start
echo.
echo Scanning for process. . .
timeout /t 10

cls
tasklist /nh /fi "imagename eq ProjectZomboid64.exe" | find /i "ProjectZomboid64.exe" >nul && (
echo Project Zomboid process found
goto :start
) || (
echo Project Zomboid process NOT found, launching game...
start "" steam://rungameid/108600
timeout /t 10
::credit nurver 2021
goto :start
)