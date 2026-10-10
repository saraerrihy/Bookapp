@echo off
mode con: cols=100 lines=30
title Book App Runner
color 0A

echo ===================================
echo Starting Book App
echo ===================================

python -m pip install -r requirements.txt
if errorlevel 1 (
    echo Error installing requirements
    pause
    exit
)

python manage.py migrate
if errorlevel 1 (
    echo Error during migration
    pause
    exit
)

cls
echo ===================================
echo Server is starting...
echo Visit: http://127.0.0.1:8000
echo Press Ctrl+C to stop the server
echo ===================================

python manage.py runserver