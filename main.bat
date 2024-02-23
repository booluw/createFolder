@echo off
setLocal

rem Check if folder name is provided as argument
if "%~1" == "" (
  echo Please provide a folder name.
  goto :eof
)

rem Create the main folder
mkdir "%~1"

rem Chane directory to the newly created folder
cd "%~1"

rem Create default files
echo Creating default view...
copy nul "%~1View.vue" > nul

rem Create store folder and add store to it
mkdir store
cd store
copy nul "%~1.ts" > nul

cd ..

rem Create interface folder and add interface file
mkdir interfaces
cd interfaces
copy nul "%~1.ts" > nul

cd ..

rem Create services folder and add file to it
mkdir services
cd services
copy nul "%~1.ts" > nul

echo Folder created, boss

:end