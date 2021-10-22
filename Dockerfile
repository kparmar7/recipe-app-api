FROM python:3.7-alpine

#ensures that the python output is sent straight to terminal
ENV PYTHONUNBUFFERED 1

# COPY req.txt req.txt #OR
# COPY ./req.txt req.txt
COPY ./req.txt /req.txt
RUN pip install -r /req.txt

RUN mkdir /web
WORKDIR /web
COPY ./appp /web 
#docker-compose run  webe sh -c "django-admin startproject recipe /web"

RUN adduser -D user
USER user