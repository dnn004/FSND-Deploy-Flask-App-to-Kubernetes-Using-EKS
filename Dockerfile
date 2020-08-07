# Comment
FROM python:stretch

COPY . /app
WORKDIR /app

RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt
RUN pip3 install boto3
RUN pip3 install botocore

ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]


