FROM python:3.10-slim-buster

ENV PYTHONUNDONTWRITEBYTECODE 1

ENV PYTHONUNBUFFERED 1


WORKDIR /app

COPY ./requirements.txt /app

RUN pip3 install -r requirements.txt

COPY . /app

CMD [ "python3","manage.py","runserver","0.0.0.0:8000" ]



