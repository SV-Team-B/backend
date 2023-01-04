FROM python:3.10-alpine

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt

RUN pip install -r /requirements.txt

WORKDIR /app
COPY . ./

RUN adduser -D user
USER user

CMD python manage.py runserver