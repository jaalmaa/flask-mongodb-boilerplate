FROM python:3.6

ADD . /usr/src/flask-app
WORKDIR /usr/src/flask-app

LABEL Name=flask-app Version=0.0.1
EXPOSE 5000

RUN python -m pip install -r requirements.txt
CMD ["python", "app/app.py"]
