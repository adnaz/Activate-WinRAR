
::original script of https://github.com/giancarlodz/Activate-WinRAR

@echo off
title Activate-WinRAR
mode 90,6

:: PRIVILEGES ::

if _%1_==_payload_  goto :payload

:getadmin
    echo %~nx0: elevating self
    set vbs=%temp%\getadmin.vbs
    echo Set UAC = CreateObject^("Shell.Application"^)                >> "%vbs%"
    echo UAC.ShellExecute "%~s0", "payload %~sdp0 %*", "", "runas", 1 >> "%vbs%"
    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
goto :eof

:payload

::CODE ::   




echo.
echo  Remember, to activate winrar, the destination must be %programfiles%\WinRAR  
echo.
echo    ^| Press any key for activate WinRAR
pause>nul
set file=%userprofile%\desktop\rarreg.key

echo RAR registration data>> %file%
echo Federal Agency for Education>> %file%
echo 1000000 PC usage license>> %file%
echo UID=b621cca9a84bc5deffbf>> %file%
echo 6412612250ffbf533df6db2dfe8ccc3aae5362c06d54762105357d>> %file%
echo 5e3b1489e751c76bf6e0640001014be50a52303fed29664b074145>> %file%
echo 7e567d04159ad8defc3fb6edf32831fd1966f72c21c0c53c02fbbb>> %file%
echo 2f91cfca671d9c482b11b8ac3281cb21378e85606494da349941fa>> %file%
echo e9ee328f12dc73e90b6356b921fbfb8522d6562a6a4b97e8ef6c9f>> %file%
echo fb866be1e3826b5aa126a4d2bfe9336ad63003fc0e71c307fc2c60>> %file%
echo 64416495d4c55a0cc82d402110498da970812063934815d81470829275>> %file%
copy "%userprofile%\desktop\rarreg.key" "%programfiles%\WinRAR"

cd %userprofile%\desktop\
del rarreg.key
cls

msg * Activation Sucessful. Press OK to continue.
exit
