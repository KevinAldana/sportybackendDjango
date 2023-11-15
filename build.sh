#!/usr/bin/env bash
# exit on error
source venv/bin/activate
set -o errexit

pip install -r requirements.txt
python -m pip install --upgrade pip
python manage.py collectstatic --no-input
python manage.py migrate
