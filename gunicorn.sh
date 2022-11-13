#!/bin/sh
gunicorn --bind 0.0.0.0:8000 CS_NL.wsgi
#gunicorn main:app -w 4 --threads 2 -b 0.0.0.0:80