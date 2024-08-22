@echo off
setlocal enabledelayedexpansion

for /f "tokens=2 delims== " %%a in ('findstr /i "version" pack.toml') do (
    set version=%%a
    set version=!version:"=!
    set version=!version: =!
)

for /f "tokens=2 delims== " %%a in ('findstr /i "minecraft" pack.toml') do (
    set minecraft=%%a
    set minecraft=!minecraft:"=!
    set minecraft=!minecraft: =!
)

if not exist "build" mkdir "build"

::packwiz curseforge export -s server -o "build/snifferishs-mastering-magic-mc!minecraft!-!version!-server.zip" :: TODO
packwiz curseforge export -s client -o "build/snifferishs-mastering-magic-mc!minecraft!-!version!.zip"

endlocal
