cp env_docker.example .env 
python manage.py makemigrations
python manage.py migrate
python manage.py collectstatic --no-input
gunicorn messanger.wsgi -b 0.0.0.0:8080

