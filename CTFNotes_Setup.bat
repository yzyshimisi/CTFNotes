@echo off

REM 检测是否登录gh
echo Checking GitHub authentication status...
gh auth status >auth_status.txt 2>&1

REM 检测未登录情况
findstr /C:"You are not logged into" auth_status.txt >nul && (
    del auth_status.txt
    echo You are not logged into GitHub.
    gh auth login
    CTFNotes_Setup.bat
    exit /b
)

REM 提取GitHub用户名
set "githubusername="
for /f "tokens=6" %%a in ('type auth_status.txt ^| findstr /C:"Logged in to github.com account"') do (
    set "githubusername=%%~a"
)
if "%githubusername%" == "" (
    echo Failed to extract GitHub username.
    pause
    exit /b
) else (
    echo GitHub username is %githubusername%
)


REM 清理临时文件
del auth_status.txt

REM Fork指定仓库并克隆main分支
echo Forking repository StingerTeam/CTFNotes...
gh repo fork StingerTeam/CTFNotes --default-branch-only --clone
@REM gh repo set-default %githubusername%/CTFNotes
if errorlevel 1 (
    echo Failed to fork repository.
    pause
    exit /b
)

REM 进入CTFNotes文件夹并写入.env文件
cd CTFNotes
if errorlevel 1 (
    echo Failed to enter directory CTFNotes.
    pause
    exit /b
)

echo Writing username to .env file...
echo GITHUB_USERNAME=%githubusername% > .env
if errorlevel 1 (
    echo Failed to write to .env file.
    pause
    exit /b
) else (
    echo Your GitHub username has been added to the .env file successfully.
)

REM 创建文件夹
echo Creating folders...
mkdir %githubusername%

echo Script completed!
pause
