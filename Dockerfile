FROM waggle/plugin-base:1.1.1-ml

WORKDIR /app

RUN echo "deb http://ports.ubuntu.com/ubuntu-ports jammy main" | tee /etc/apt/sources.list.d/temporary-repository.list

RUN apt-get update
RUN apt-get install -y build-essential python3 python3-pip

COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

ENTRYPOINT ["python3", "main.py"]
