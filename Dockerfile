FROM codercom/code-server:3.5.0

LABEL title="The Scratch 3.0 Extensions development environment based on the code-server"
LABEL version="1.0.0"
LABEL repository="https://github.com/jp-rad/s3coder"
LABEL maintainer="jp-96 <jp-96@outlook.jp>"

RUN sudo apt-get update -y \
 && sudo apt-get install -y \
    nodejs \
    npm \
 && sudo apt-get clean \
 && sudo rm -rf /var/lib/apt/lists/* \
 && sudo npm install -g \
    npm \
 && mkdir /home/coder/s3 \
 && cd /home/coder/s3 \
 && git clone --depth 1 https://github.com/llk/scratch-vm.git \
 && git clone --depth 1 https://github.com/llk/scratch-gui.git \
 && mkdir scratch-ws \
 && cd /home/coder/s3/scratch-vm \
 && npm i \
 && sudo npm link \
 && cd /home/coder/s3/scratch-gui \
 && npm i \
 && sudo npm link scratch-vm \
 && cd /home/coder/s3/scratch-vm \
 && git checkout . \
 && cd /home/coder/s3/scratch-gui \
 && git checkout .

RUN cd /home/coder/s3 \
 && mkdir .vscode
COPY --chown=coder:coder launch.json /home/coder/s3/.vscode
COPY --chown=coder:coder README.md /home/coder/s3
