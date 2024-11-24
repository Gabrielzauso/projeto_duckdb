# Use uma imagem oficial do Python como base
FROM python:3.12

# Define o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copia os arquivos do projeto para o contêiner
COPY . /app


# Instala as dependências do Python e seta o .env
RUN pip install --no-cache-dir -r requirements.txt

COPY .env /app/.env

# Expõe a porta usada pelo Streamlit
EXPOSE 8501

# Comando para rodar o Streamlit
CMD ["streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]
