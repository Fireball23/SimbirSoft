FROM ubuntu

#updating updating and installing required packages

RUN apt-get update && apt-get install -y python python-pip 

#creating directory
RUN mkdir /Flaskex

#copying project to new directory
COPY Flaskex/ /Flaskex

#installing project
RUN pip install -r /Flaskex/requirements.txt

#start app
ENTRYPOINT python /Flaskex/app.py
