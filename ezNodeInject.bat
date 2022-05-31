@echo off
title ezNodeInject
set dataPath="%localappdata%\ezNodeInject.dat"
if exist %dataPath% goto starttwo
:start
cls
echo Set node js folder path
set /p path=
echo %path%> %dataPath%
echo Set the js path to "%path%"
pause
goto starttwo


:starttwo
cls
echo Select an option.
echo 1. run a JS file
echo 2. temp set path but run a js file
echo 3. change path completely
set /p option=
if %option% == 1 goto runJSFile
if %option% == 2 goto tempJSFile
if %option% == 3 goto start
echo need help? Type a number of the actions.
pause
goto starttwo

:tempJSFile
cls
echo Type the path of the JS File you want to run.
set /p epicPath=
@echo on
node "%epicPath%"
@echo off
echo Program finished
pause
goto starttwo

:runJSFile
(
set /p dataLoaded=
) < %dataPath%
cls
echo Type the path of the JS File you want to run.
echo (Not the full path, but the current path you wrote + the name of the js file)
set /p epicPath=
@echo off
node "%dataLoaded%\%epicPath%"
@echo off
echo Program finished
pause
goto starttwo