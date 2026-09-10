@echo off
cd /d "%~dp0"
set "PATH=D:\Program Files\Git\cmd;%PATH%"
set "HTTPS_PROXY=http://127.0.0.1:7897"
set "HTTP_PROXY=http://127.0.0.1:7897"

git add -A
git commit -m "Update website content"
if errorlevel 1 echo [Info] No changes detected, nothing to commit.
git push
echo.
echo ============================================
echo Done! Your site will be updated in 1-2 minutes.
echo URL: https://ccznb1-star.github.io/
echo ============================================
echo.
pause
