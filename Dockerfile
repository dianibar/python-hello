FROM python:3
ENV PORT=8080
WORKDIR /usr/src/app
EXPOSE 8080/tcp

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "python", "./server.py" ]
