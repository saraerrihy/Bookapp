@echo on
echo Starting Book App Setup...
echo.

echo Current directory:
cd /d c:\Users\HP\Downloads\Bookapp-main
echo.

echo Installing required packages...
pip install django==3.2
pip install django-bootstrap-modal-forms==2.2.0
pip install django-bootstrap3==22.2
pip install django-forms-bootstrap==3.1.0
pip install django-widget-tweaks==1.4.12
pip install Pillow==9.4.0
echo.

echo Running migrations...
python manage.py makemigrations
python manage.py migrate
echo.

echo Starting server...
echo Visit http://localhost:3000 in your web browser
python manage.py runserver localhost:3000

pause