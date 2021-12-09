@echo off
SETLOCAL ENABLEEXTENSIONS
set TO=%1
set CONFIGURATION=%2
set PLATFORM=%3
set SUFFIX=%4
IF NOT EXIST "%TO%" mkdir "%TO%"
copy "..\SharpPlink\bin%SUFFIX%\%PLATFORM%\%CONFIGURATION%\SharpPlink-%PLATFORM%.exe" %TO%\SharpPlink-%PLATFORM%.svnExe || echo Copying SharpPlink.exe failed
IF ERRORLEVEL 1 EXIT /B 1
copy "..\SharpPlink\bin%SUFFIX%\%PLATFORM%\%CONFIGURATION%\SharpPlink-%PLATFORM%.pdb" %TO%\SharpPlink-%PLATFORM%.pdb || echo Copying SharpPlink.pdb failed
IF ERRORLEVEL 1 EXIT /B 1
copy "..\..\imports\%CONFIGURATION%\bin\SharpSvn-DB44-20-%PLATFORM%.svnDll" "%TO%\" || echo Copying SharpSvn-DB44-20-%PLATFORM%.svnDll failed
IF ERRORLEVEL 1 EXIT /B 1
copy "..\..\imports\%CONFIGURATION%\bin\SharpSvn-DB44-20-%PLATFORM%.pdb" "%TO%\" || echo Copying SharpSvn-DB44-20-%PLATFORM%.pdb failed
IF ERRORLEVEL 1 EXIT /B 1
EXIT /B 0
