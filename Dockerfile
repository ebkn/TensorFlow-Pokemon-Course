FROM python:3.8.2-alpine3.11

WORKDIR /src

RUN apk update --no-cache \
  && apk add --no-cache \
    git

COPY requirements.txt .

RUN pip install --upgrade pip \
  && pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["python", "main.py"]
