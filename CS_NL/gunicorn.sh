#!/bin/sh
gunicorn CS_NL.wsgi 80
#gunicorn main:app -w 4 --threads 2 -b 0.0.0.0:80