FROM ubuntu:20.04

RUN apt-get update
RUN apt-get install -y tmux
RUN apt-get -y install python3-pip
RUN apt-get install -y python3-venv

RUN python3 -m venv ./pyenvs/slime_server
RUN . ./pyenvs/slime_server/bin/activate

COPY requirements.txt requirements.txt
RUN pip install --upgrade pip
RUN pip install discord.py discord-components asyncio file-read-backwards mctools requests bs4 psutil

COPY . .