# Use uma imagem oficial do Python como base
FROM python:3.12

# Define o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copia os arquivos do projeto para o contêiner
COPY requirements.txt requirements.txt
COPY app.py app.py
COPY pipeline_0.py pipeline_0.py
COPY duck.db duck.db

# Instala as dependências do Python
RUN pip install --no-cache-dir -r requirements.txt

# Expõe a porta usada pelo Streamlit
EXPOSE 8501

# Comando para rodar o Streamlit
CMD ["streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]
