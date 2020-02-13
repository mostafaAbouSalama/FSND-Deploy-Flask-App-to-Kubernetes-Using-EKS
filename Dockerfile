FROM python:stretch

RUN mkdir /app

WORKDIR /app

COPY requirements.txt .

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

COPY . .

ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]
