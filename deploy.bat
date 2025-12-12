@echo off
echo ==========================================
echo      MYFIT MK - AVTOMATSKO OBJAVUVANJE
echo ==========================================
echo.

echo 1. Pravam Build na aplikacijata...
call npm run build
IF %ERRORLEVEL% NEQ 0 (
    echo [GRESKA] Build procesot ne uspea. Proverete go kodot.
    pause
    exit /b
)

echo.
echo 2. Dodavam promeni vo Git...
git add .

echo.
echo 3. Vnesi opis za promenite (na pr. "novi vezbi"):
set /p commit_msg="Opis: "

git commit -m "%commit_msg%"

echo.
echo 4. Prakjam na GitHub...
git push origin main

echo.
echo ==========================================
echo      [USPESHNO] SE E SPREMNO!
echo ==========================================
pause