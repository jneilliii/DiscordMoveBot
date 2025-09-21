FROM python:3.13-slim-bookworm

RUN apt update
RUN apt install -y git

RUN mkdir /movebot
WORKDIR /movebot
RUN HOME=/movebot

COPY requirements.txt /movebot
COPY move_bot.py /movebot

RUN pip install -U -r requirements.txt
ENTRYPOINT ["python3"]
