@echo off
setlocal
set "SRC=C:\Users\Boya\IdeaProjects\mahjong_console\src\main\java"
set "BUILD=%TEMP%\mahjong_console_build"
if exist "%BUILD%" rmdir /s /q "%BUILD%"
mkdir "%BUILD%"
javac -encoding UTF-8 -d "%BUILD%" %SRC%\com\boaylin\mahjong\*.java %SRC%\mahjong\Main.java
if errorlevel 1 (
  echo Compilation failed.
  pause
  exit /b 1
)
start "" javaw -cp "%BUILD%" com.boaylin.mahjong.Main
endlocal