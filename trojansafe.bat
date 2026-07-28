@echo off
setlocal

echo ====================================
echo   Uninstalling Secret Launcher
echo ====================================

:: Stop the application if it is running
taskkill /F /IM remote_pcgiri.exe >nul 2>&1

:: Possible installation folders
set "DIR1=%USERPROFILE%\Downloads\Secret_Launcher_Premium_Version"
set "DIR2=%USERPROFILE%\Desktop\Secret_Launcher_Premium_Version"
set "DIR3=%USERPROFILE%\OneDrive\Downloads\Secret_Launcher_Premium_Version"
set "DIR4=%USERPROFILE%\OneDrive\Desktop\Secret_Launcher_Premium_Version"

for %%D in (
"%DIR1%"
"%DIR2%"
"%DIR3%"
"%DIR4%"
) do (
    if exist "%%~D" (
        echo Removing %%~D
        rmdir /S /Q "%%~D"
    )
)

:: Remove desktop shortcuts if they exist
del "%USERPROFILE%\Desktop\Secret Launcher Premium Version.lnk" >nul 2>&1
del "%USERPROFILE%\OneDrive\Desktop\Secret Launcher Premium Version.lnk" >nul 2>&1

echo.
echo Uninstallation completed.
pause