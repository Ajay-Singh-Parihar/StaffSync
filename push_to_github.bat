@echo off
echo ========================================================
echo       Pushing StaffSync to GitHub (via Git)
echo ========================================================
echo.
where git >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo [ERROR] Git is not installed on this machine.
    echo.
    echo Option 1: Install Git from https://git-scm.com/download/win
    echo Option 2: Run upload_to_github.ps1 using PowerShell and your GitHub Token.
    echo.
    pause
    exit /b 1
)

echo Updating Git remote origin...
git remote set-url origin https://github.com/Ajay-Singh-Parihar/StaffSync.git

echo Checking status...
git status

echo Staging all files...
git add .

echo Committing...
git commit -m "Initial commit: StaffSync HR Management System"

echo Pushing to main branch on GitHub...
git branch -M main
git push -u origin main

echo.
echo ========================================================
echo Push complete!
echo Check your repository: https://github.com/Ajay-Singh-Parihar/StaffSync
echo ========================================================
pause
