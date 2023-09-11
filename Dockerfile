FROM python:3
ENV PORT=80
WORKDIR /usr/src/app
EXPOSE 80/tcp

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "python", "./server.py" ]
