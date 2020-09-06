# QuickStart - Scratch 3.0 Extensions Development

> How to setup the Scratch 3.0 Extensions development environment, using the Docker.

## Purpose

Have fun pair programming with parents and children, using the Scratch 3.0 Extensions development environment based on the code-server.

## Requirements

- Windows 10
- [Docker Desktop on Windows](https://docs.docker.com/docker-for-windows/install/) or [Docker Desktop on Windows Home](https://docs.docker.com/docker-for-windows/install-windows-home/)

## Usage

### STEP 1 - Docker

On the command prompt, run the following commands.

```
cd c:\
mkdir scratch-ws
docker run --name s3coder -d -p 8080:8080 -p 8601:8601 -v C:/scratch-ws:/home/coder/s3/scratch-ws -e PASSWORD=password jprad/s3coder /home/coder/s3

```

### STEP 2 - Open the code-server

Click the following link to open the code-server. The authentication password is '`password`'.

> http://localhost:8080/


### STEP 3 - Start Scratch 3.0 GUI (scratch-gui)

Start scratch-gui with the following operation.

1. Click `[Run (Ctrl + Shift + D)]` icon.
2. Select `'Run Scratch 3.0 GUI'` (default).
3. Click `[Start Debuging]` icon.
4. Select `[TERMINAL]` tab, waiting `'Compiled successfully'`.


### STEP 4 - Coding on Scratch 3.0 GUI

The following link will open Scratch 3.0 GUI.

> http://localhost:8601/


### How to control the docker

To stop and restart the docker container, use the following docker commands

**Stop docker**

```
docker stop s3coder
```

**Start docker**

```
docker start s3coder
```

## Development

You can develop the Scratch 3.0 Extensions on a web-based development environment. But create PNGs and other images using Windows applications. If you save the file in the `c:\scratch-ws` folder, you can load it to copy it to some folder on the code-server.

For specific instructions on how to develop the Scratch 3.0 Extensions, see the following links.

### Links

- [The official documentation regarding extensions.](https://github.com/LLK/scratch-vm/blob/develop/docs/extensions.md)
- [Scratch 3.0の拡張機能を作ってみよう](https://ja.scratch-wiki.info/wiki/Scratch_3.0%E3%81%AE%E6%8B%A1%E5%BC%B5%E6%A9%9F%E8%83%BD%E3%82%92%E4%BD%9C%E3%81%A3%E3%81%A6%E3%81%BF%E3%82%88%E3%81%86) \(Japanese only\)
- [Scratch を改造しよう](https://otona-scratch.champierre.com/books/1/posts) \(Japanese only, JPY500.00\)
- [子供の科学 2020 9月号, p.p.66-69, 第42回 ジャバスクリプトでスクラッチを拡張しよう](https://amzn.to/35hAzDc) \(Magazine for Japanese kids, JPY770.00\)
