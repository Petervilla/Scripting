@echo off
:menu
CLS
ECHO ************************Configuration Batch File *************************

echo 1 - Run ipconfig
echo 2 - Run ipconfig all
echo 3 - Release IP address
echo 4 - Renew IP address
echo 5 - Flush DNS cache
echo 6 - Stop the printer spooler
echo 7 - Start the printer spooler 
echo 8 - Display user id and SID (whoami)
echo 9 - Create a folder in Windows disk C
echo 10 - Scan the hard drive in the computer
echo 11 - Change the letter in CMD to green color
echo 12 - Change the background of CMD to red color
echo 13 - Open the paintbrush program
echo 14 - Open the Command Prompt
echo 15 - Type "q" to exit

ECHO ***************************************************************************

SET /P choice="Enter the number you wish to run: "

if "%choice%"=="1"  goto one
if "%choice%"=="2"  goto two
if "%choice%"=="3"  goto three
if "%choice%"=="4"  goto four
if "%choice%"=="5"  goto five
if "%choice%"=="6"  goto six
if "%choice%"=="7"  goto seven
if "%choice%"=="8"  goto eight
if "%choice%"=="9"  goto nine
if "%choice%"=="10" goto ten
if "%choice%"=="11" goto eleven
if "%choice%"=="12" goto twelve
if "%choice%"=="13" goto thirteen
if "%choice%"=="14" goto fourteen
if "%choice%"=="q"  exit

:one
ping 127.1.1.1
pause
goto menu

:two
ipconfig
pause
goto menu

:three
ipconfig/release
pause
goto menu

:four
ipconfig/renew
pause
goto MENU

:five
ipconfig/flushdns
pause
goto MENU

:six
net stop spooler
pause
goto MENU

:seven
net start spooler
pause
goto MENU

:eight
whoami/user
pause
goto MENU

:nine
cd/
md YenHuynh
pause
goto MENU

:ten
CHKDSK
pause 
goto MENU

:eleven
COLOR 02
pause
goto MENU

:twelve
COLOR 42
pause
goto MENU

:thirteen
mspaint
pause
goto MENU

:fourteen
start cmd.exe
pause
goto MENU
