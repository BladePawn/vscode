::@ECHO off
@echo off
SETLOCAL EnableExtensions
SETLOCAL EnableDelayedExpansion
color 5
chcp 65001 >nul 2>&1
title Compilation

CD /d "%~dp0"
SET DIR=%~dp0
MKDIR build >nul 2>&1
echo Starting PAWN compiler
"%cd%\qawno\pawncc.exe" -;+ -(+ -v=2 -d=3 -S=10240 -O1 -t=4 -i="%cd%\qawno\include" "%cd%\src\main.pwn"
MOVE /Y main.amx Server/gamemodes/main.amx >nul 2>&1
echo [OK] Everything DONE! Go to ./build/ folder and find your .amx file
::pause