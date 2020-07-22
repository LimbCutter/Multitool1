@echo off
:againpass
cls
title Login Sreen
echo.
color 04
mode 25,5
set /p user=Username :
echo.
set /p pass=Password :
echo.
echo.
if %user% == root if %pass% == root goto ok
echo.
echo Nice try bud, this is a private application :) 
timeout 5>nul
goto againpass
:ok
rem Enter Code Here
cls
@echo off
color 5
title Plaq Multi-Tool
mode 95,25
:menu
type 1.py
echo.

set /p action= Enter Option Here # 
if '%action%'=='1' goto Pinger
if '%action%'=='2' goto Lookup
if '%action%'=='3' goto Spam
if '%action%'=='4' goto Port
goto menu

:Pinger
@echo off & cls
start Pinger.bat
goto menu

:Lookup
@echo off & cls
start https://www.iplocation.net/
goto menu 

:Port
@echo off & cls
start IP-Port.exe
goto menu 

:Spam
@echo off & cls
start Spam.vbs
goto menu

