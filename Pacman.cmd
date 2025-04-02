@echo off

set PORT=8080

netstat -ano | findstr :%PORT% > nul
if %errorlevel% equ 0 (
    start "" "http://127.0.0.1:8080/Pacman.html"
) else (
    start /min cmd /k live-server --open=Pacman.html
)