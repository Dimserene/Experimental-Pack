@echo off

echo ********************************************************
echo IMPORTANT: Please backup your current Mods folder before proceeding.
echo The installation will overwrite existing files in your Mods directory.
echo ********************************************************

:: Check if old Experimental-Pack folder exists
if exist "Experimental-Pack" (
    echo A previous Experimental-Pack folder already exists.
    echo It will now be removed before cloning a new copy.
    echo Press [ENTER] to continue or close this window to cancel.
    pause
    rmdir /s /q "Experimental-Pack"
)

:: Clone the modpack
git clone --recurse-submodules --remote-submodules https://github.com/Dimserene/Experimental-Pack

:: Copy new Mods folder to the Balatro Mods directory
echo Copying Mods folder to %appdata%\Balatro\Mods ...
xcopy "Experimental-Pack\Mods" "%appdata%\Balatro\Mods" /w /e /h /i

echo Installation complete. Please ensure everything is working correctly.
pause