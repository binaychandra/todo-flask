FROM python:3.8-alpine

# set a directory for the app
WORKDIR /usr/src/app

# copy all the files to the container
COPY . .

# install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# tell the port number the container should expose
EXPOSE 5000

# run the command
CMD ["python", "./app.py"]

# FROM python:3.8-alpine as base
# FROM base as builder
# RUN mkdir /install
# WORKDIR /install
# COPY requirements.txt /requirements.txt
# RUN pip install -r /requirements.txt
# FROM base
# COPY --from=builder /install /usr/local
# COPY . /app
# WORKDIR /app
# CMD ["python", "./app.py"]

#CMD ["gunicorn", "-w 4", "main:app"]