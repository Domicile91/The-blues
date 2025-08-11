@echo off
echo ========================================
echo   Blue Traders Platform - Quick Start
echo ========================================
echo.

echo Starting The Blue Traders Trading Platform...
echo.

echo [1/3] Checking Node.js...
node --version
if %errorlevel% neq 0 (
    echo ERROR: Node.js not found. Please install Node.js first.
    pause
    exit /b 1
)

echo [2/3] Installing backend dependencies...
cd backend
call npm install
if %errorlevel% neq 0 (
    echo ERROR: Failed to install dependencies.
    pause
    exit /b 1
)

echo [3/3] Starting backend server...
echo.
echo ✅ Backend starting on http://localhost:3000
echo ✅ Frontend available at: index.html
echo ✅ Admin dashboard at: admin/index.html
echo.
echo 🚀 The Blue Traders Platform is ready!
echo.
echo Press Ctrl+C to stop the server
start "" http://localhost:3000
call npm start

pause
