## Ethminer NVIDIA Ethash
-----

### NVIDIA Docker (https://github.com/NVIDIA/nvidia-docker)
```
# Install nvidia-docker and nvidia-docker-plugin
wget -P /tmp https://github.com/NVIDIA/nvidia-docker/releases/download/v1.0.1/nvidia-docker_1.0.1_amd64.tar.xz
sudo tar --strip-components=1 -C /usr/bin -xvf /tmp/nvidia-docker*.tar.xz && rm /tmp/nvidia-docker*.tar.xz

# Run nvidia-docker-plugin
sudo -b nohup nvidia-docker-plugin > /tmp/nvidia-docker.log

# Test nvidia-smi
nvidia-docker run --rm nvidia/cuda nvidia-smi
```
-----

### Run

#### ETI -> comining.io (Default)
```
nvidia-docker run -ti --rm --name Ethminer-nvidia-eti izone/ethminer:nvidia
```
```
nvidia-docker run -ti --rm --name Ethminer-nvidia-eti \
-e POOL="s.comining.io" \
-e PORT="9999" \
-e USER="A8bW7QQtc8igRn5EEZgoBBD.1uvr3z" \
izone/ethminer:nvidia 
```

-----
#### Build
```
docker build -t izone/ethminer:nvidia .
```

