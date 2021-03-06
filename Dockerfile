FROM python:3.6

ENV PYTHONUNBUFFERED 1

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    postgresql-client \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /code/

COPY requirements.txt ./
RUN pip install -r requirements.txt
COPY . .


EXPOSE 8080