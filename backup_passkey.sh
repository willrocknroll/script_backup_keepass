#!/bin/bash

# Define o arquivo de origem e o diretório de destino
arquivo_origem="/home/willian/Documentos/MG/Keepass/Database - Copia.kdbx"
diretorio_destino="/home/willian/MEGA/MEGA"

# Verifica se o arquivo de origem existe
if [ ! -f "$arquivo_origem" ]; then
  echo "Erro: Arquivo de origem '$arquivo_origem' não encontrado."
  exit 1
fi

# Verifica se o diretório de destino existe
if [ ! -d "$diretorio_destino" ]; then
  echo "Erro: Diretório de destino '$diretorio_destino' não encontrado."
  exit 1
fi

# Monta o caminho completo do arquivo de destino
arquivo_destino="$diretorio_destino/$(basename "$arquivo_origem")"

# Realiza a cópia do arquivo
cp "$arquivo_origem" "$arquivo_destino"

# Verifica se a cópia foi bem-sucedida
if [ $? -eq 0 ]; then
  echo "Arquivo '$arquivo_origem' copiado com sucesso para '$arquivo_destino'."
else
  echo "Erro ao copiar o arquivo '$arquivo_origem'."
  exit 1
fi

exit 0
