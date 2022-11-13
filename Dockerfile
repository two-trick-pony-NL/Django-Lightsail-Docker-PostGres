# Set base image (host OS)
FROM python:3.10-buster

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# By default, listen on port 8000
EXPOSE 80
EXPOSE 8000

# Set the working directory in the container
WORKDIR /app

# Copy the dependencies file to the working directory
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt


# Copy the content of the local src directory to the working directory
COPY . .

# Specify the command to run on container start
#ENTRYPOINT ["cd CS_NL && ./gunicorn.sh"]
CMD ["python3", "Django/manage.py", "runserver", "0.0.0.0:8000"]
#ENTRYPOINT ["gunicorn CS_NL/CS_NL.wsgi"]
#CMD ["gunicorn", "--bind, 0.0.0.0:8000", "--workers", "1", "--timeout", "60", "CS_NL/CS_NL.wsgi"]