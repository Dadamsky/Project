# Wybierz oficjalny obraz Pythona jako podstawę
FROM python:3.10-slim

# Ustaw katalog roboczy w kontenerze
WORKDIR /app

# Skopiuj plik requirements.txt do kontenera
COPY requirements.txt .

# Zainstaluj wymagane zależności
RUN pip install --no-cache-dir -r requirements.txt

# Skopiuj całą aplikację do kontenera
COPY . .

# Otwórz port 5000 w kontenerze
EXPOSE 5000

# Ustaw domyślne polecenie uruchamiające aplikację
CMD ["python", "app.py"]
