FROM python:3.9-alpine
WORKDIR /app
COPY ./card-business/requirements.txt .
RUN pip3 install --no-cache-dir -r ./requirements.txt
EXPOSE 3000
ENV LOGOMARCA="URL IMG"
ENV FOTO="URL IMG"
ENV NOME="SEU NOME"
ENV IDADE="SUA IDADE"
ENV EMAIL="SEU EMAIL"
ENV PROFISSAO="SUA PROFISSAO"
ENV SITE="URL DO SEU SITE"
COPY . .
CMD ["python3", "./card-business/app.py"]