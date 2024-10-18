FROM python:3

# Install Django 3.2
RUN pip install django==3.2

# Install setuptools to resolve the distutils issue
RUN apt-get update && apt-get install -y python3-setuptools

# Copy the project files into the container
COPY . .

# Run Django migrations
RUN python manage.py migrate
