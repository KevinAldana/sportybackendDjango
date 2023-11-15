#!/usr/bin/env bash
# exit on error
set -o errexit
source venv/bin/activate
/opt/render/project/src/.venv/bin/python -m pip install --upgrade pip
pip install -r requirements.txt
python -m pip install --upgrade pip
python manage.py migrate
