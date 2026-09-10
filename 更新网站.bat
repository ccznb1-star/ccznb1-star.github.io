@echo off
chcp 65001 >nul
cd /d "%~dp0"
set "PATH=D:\Program Files\Git\cmd;%PATH%"
set "HTTPS_PROXY=http://127.0.0.1:7897"
set "HTTP_PROXY=http://127.0.0.1:7897"

git add -A
git commit -m "更新网站内容"
if errorlevel 1 echo [提示] 没有检测到改动，无需提交。
git push
echo.
echo ============================================
echo 完成！网站一般 1-2 分钟后生效。
echo 网址：https://ccznb1-star.github.io/
echo ============================================
echo.
pause
