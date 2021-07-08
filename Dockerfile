FROM ubuntu
RUN apt-get update && apt-get install -y python3 python3-pip 
RUN pip3 install --upgrade pip
WORKDIR /app
COPY . /app
RUN apt-get install -y python3-venv
RUN pip install -r requirements.txt
RUN pip install flask_restful
RUN export FLASK_APP=app.py
EXPOSE 5000
ENTRYPOINT [ "python3" ]
CMD ["main.py"]


# FROM python
# WORKDIR /app
# RUN python3 -m venv env
# COPY . /app
# RUN pip install -r requirements.txt
# RUN export FLASK_APP=main.py
# EXPOSE 5000
# ENTRYPOINT [ "python" ]
# CMD [ "main.py"]
