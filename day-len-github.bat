@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo === Dua giao dien Viec CNTT len GitHub ===
where git >nul 2>nul || (echo Chua cai Git. Tai tai https://git-scm.com/download/win roi chay lai. & pause & exit /b)
if not exist ".git" (
  git init -b main
  git remote add origin https://github.com/dolamthien/viec-cntt.git
)
git add -A
git commit -m "Cap nhat giao dien Viec CNTT" 2>nul
git push -u origin main
echo.
echo Xong. Lan dau: vao github.com/dolamthien/viec-cntt ^> Settings ^> Pages ^> Branch: main ^> Save
echo Link xem: https://dolamthien.github.io/viec-cntt/
pause
