@ECHO OFF
REM Damit das Skript aus jedem Verzeichnis ausgefuehrt werden kann...,
cd %~dp0

REM Variablen - Ergaenzbar machen
REM SETLOCAL EnableDelayedExpansion
REM %~dp0 ==> Verzeichns in der diese Datei liegt..
REM %CD% ==> IRRELEVANT => Woher Skript gestartet wird.
REM ### =>

cd %~dp0
REM Verzeichnis hoch
pushd ..

echo.
echo.
python "VDRandomWallpaper-Python"
echo.


REM Verzeichnis hoch
pushd ..
pushd ..
cd "Windows10_OnlySoftware"
cd "VirtualDesktop"
cd "Windows.10.Virtual.Desktop.Enhancer.0.11.1"

echo.
echo.
echo "Starte nun virtual-desktop-enhancer.exe"
start "" "virtual-desktop-enhancer.exe"
echo.
goto :step_exit

:step_exit

cd %~dp0
echo.
echo.
echo.
REM echo 
REM echo 
REM echo.
REM pause
REM exit