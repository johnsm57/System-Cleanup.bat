
@echo off
:: Windows 11 System Cleanup Script

:: Clean temporary files
echo Cleaning temporary files...
del /q /f %temp%\*.*

:: Clean Windows temporary files
echo Cleaning Windows temporary files...
cleanmgr /sagerun:1

:: Empty Recycle Bin
echo Emptying Recycle Bin...
rd /s /q C:\$Recycle.Bin

:: Clean Windows Update files
echo Cleaning Windows Update files...
cleanmgr /sageset:2
cleanmgr /sagerun:2

:: Clean system memory dump files
echo Cleaning system memory dump files...
cleanmgr /sageset:3
cleanmgr /sagerun:3

:: Clean system error memory dump files
echo Cleaning system error memory dump files...
cleanmgr /sageset:4
cleanmgr /sagerun:4

echo System cleanup completed.
pause