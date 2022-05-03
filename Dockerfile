# python base image
FROM python:3.8-slim-buster

# working folder
WORKDIR /app

# copy requirements to working folder
COPY requirements.txt requirements.txt

# run dependency installer
RUN pip3 install -r requirements.txt

# copy everything
COPY . .

# command to run
CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]