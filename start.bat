@echo off
REM Check if the virtual environment directory exists
if not exist venv (
    echo Creating virtual environment...
    py -3.11 -m venv venv
)

echo Activating virtual environment...
call venv\Scripts\activate

echo Installing dependencies...
pip install --upgrade pip
pip install -r requirements.txt

echo Setup complete. Virtual environment is ready.
pause