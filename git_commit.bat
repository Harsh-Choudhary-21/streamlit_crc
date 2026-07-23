@echo off
setlocal

:: ── Automated Git Push Script ──────────────────────────────────────────────
:: Remote : CRC  →  https://github.com/Harsh-Choudhary-21/streamlit_crc.git
:: Branch : main
:: ───────────────────────────────────────────────────────────────────────────

:: Allow a custom commit message as first argument, otherwise use a timestamp
if "%~1"=="" (
    for /f "tokens=1-6 delims=/:. " %%a in ("%DATE% %TIME%") do (
        set MSG=Auto-commit: %%a-%%b-%%c %%d:%%e:%%f
    )
) else (
    set MSG=%~1
)

echo.
echo [1/3] Staging all changes...
git add .
if errorlevel 1 ( echo ERROR: git add failed & exit /b 1 )

echo [2/3] Committing with message: "%MSG%"
git commit -m "%MSG%"
if errorlevel 1 ( echo Nothing to commit or commit failed. & exit /b 1 )

echo [3/3] Pushing to CRC/main...
git push CRC main
if errorlevel 1 ( echo ERROR: git push failed & exit /b 1 )

echo.
echo Done! Changes pushed to https://github.com/Harsh-Choudhary-21/streamlit_crc.git
endlocal
