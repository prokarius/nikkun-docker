FROM python:3.7.0-alpine3.8

RUN mkdir /app
COPY app/ /app
COPY requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install --no-cache-dir -r requirements.txt

ENV FLASK_ENV="docker"
ENV FLASK_APP="app.py"

CMD ["flask", "run", "--host=0.0.0.0"]

EXPOSE 5000
