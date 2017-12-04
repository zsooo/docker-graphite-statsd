#!/bin/bash
mkdir -p /usr/local/src/graphite-web/storage/log/webapp/
PYTHONPATH=/opt/graphite/webapp python3 /usr/local/src/graphite-web/webapp/manage.py migrate auth --settings=graphite.settings
PYTHONPATH=/opt/graphite/webapp python3 /usr/local/src/graphite-web/webapp/manage.py migrate --settings=graphite.settings
PYTHONPATH=/opt/graphite/webapp python3 /usr/local/bin/django-admin.py migrate auth --settings=graphite.settings
PYTHONPATH=/opt/graphite/webapp python3 /usr/local/bin/django-admin.py migrate --settings=graphite.settings
PYTHONPATH=/opt/graphite/webapp python3 /usr/local/src/graphite-web/webapp/manage.py createsuperuser --settings=graphite.settings