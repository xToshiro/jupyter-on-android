# Jupyter Notebook on Termux (Android)

![GitHub language count](https://img.shields.io/github/languages/count/xToshiro/jupyter-on-android)
![GitHub top language](https://img.shields.io/github/languages/top/xToshiro/jupyter-on-android?style=flat)
![License](https://img.shields.io/github/license/xToshiro/jupyter-on-android)

This repository provides a script and a step-by-step guide to install Jupyter Notebook on Android devices using the Termux app. This allows you to run a local Jupyter environment on your smartphone without relying on third-party apps that may have paid features.

This method was successfully tested on a **Samsung S24** using Termux from **F-Droid**.

---

## 🇬🇧 English

### Installation

You can install Jupyter Notebook using the automated script or by following the manual steps.

#### Method 1: Automated Installation (Recommended)

1.  **Download the script:**
    ```bash
    curl -O [https://raw.githubusercontent.com/xToshiro/jupyter-on-android/main/install_jupyter.sh](https://raw.githubusercontent.com/xToshiro/jupyter-on-android/main/install_jupyter.sh)
    ```

2.  **Give execution permission to the script:**
    ```bash
    chmod +x install_jupyter.sh
    ```

3.  **Run the script:**
    ```bash
    ./install_jupyter.sh
    ```
    The script will handle all the necessary steps.

#### Method 2: Manual Step-by-Step Installation

If you prefer to install it manually, open Termux and execute the following commands in order.

1.  **Update and upgrade Termux packages:**
    ```bash
    pkg update && pkg upgrade
    ```

2.  **Install essential build tools and libraries:**
    ```bash
    pkg install build-essential libzmq fftw libsodium rust python git curl libandroid-sysv-semaphore tur-repo
    ```

3.  **Update package lists again after adding the `tur-repo`:**
    ```bash
    pkg update
    ```

4.  **Install the `clang-16` compiler:**
    ```bash
    pkg install clang-16
    ```

5.  **Set `clang-16` as the C compiler for the current session.** This is crucial for compiling some Python packages.
    ```bash
    export CC=clang-16
    ```

6.  **Upgrade Python's package manager (pip):**
    ```bash
    pip install --upgrade pip setuptools wheel
    ```

7.  **Install required Python libraries:**
    ```bash
    pip install aiohttp psutil
    ```

8.  **Finally, install Jupyter Notebook:**
    ```bash
    pip install notebook
    ```

### How to Use

After the installation is complete, you can start Jupyter Notebook at any time by running the following command in Termux:

```bash
jupyter notebook
```

This will start the Jupyter server and provide you with a URL (usually starting with `http://127.0.0.1:8888/...` or `http://localhost:8888/...`) containing a token. Copy and paste this URL into your web browser to access the Jupyter interface.

---

## 🇧🇷 Português

### Instalação

Você pode instalar o Jupyter Notebook usando o script automatizado ou seguindo os passos manuais.

#### Método 1: Instalação Automatizada (Recomendado)

1.  **Baixe o script:**
    ```bash
    curl -O [https://raw.githubusercontent.com/xToshiro/jupyter-on-android/main/install_jupyter.sh](https://raw.githubusercontent.com/xToshiro/jupyter-on-android/main/install_jupyter.sh)
    ```

2.  **Dê permissão de execução para o script:**
    ```bash
    chmod +x install_jupyter.sh
    ```

3.  **Execute o script:**
    ```bash
    ./install_jupyter.sh
    ```
    O script cuidará de todos os passos necessários.

#### Método 2: Instalação Manual Passo a Passo

Se preferir instalar manualmente, abra o Termux e execute os seguintes comandos em ordem.

1.  **Atualize os pacotes do Termux:**
    ```bash
    pkg update && pkg upgrade
    ```

2.  **Instale as ferramentas de compilação e bibliotecas essenciais:**
    ```bash
    pkg install build-essential libzmq fftw libsodium rust python git curl libandroid-sysv-semaphore tur-repo
    ```

3.  **Atualize as listas de pacotes novamente após adicionar o `tur-repo`:**
    ```bash
    pkg update
    ```

4.  **Instale o compilador `clang-16`:**
    ```bash
    pkg install clang-16
    ```

5.  **Defina o `clang-16` como o compilador C para a sessão atual.** Isso é crucial para a compilação de alguns pacotes Python.
    ```bash
    export CC=clang-16
    ```

6.  **Atualize o gerenciador de pacotes do Python (pip):**
    ```bash
    pip install --upgrade pip setuptools wheel
    ```

7.  **Instale as bibliotecas Python necessárias:**
    ```bash
    pip install aiohttp psutil
    ```

8.  **Finalmente, instale o Jupyter Notebook:**
    ```bash
    pip install notebook
    ```

### Como Usar

Após a conclusão da instalação, você pode iniciar o Jupyter Notebook a qualquer momento executando o seguinte comando no Termux:

```bash
jupyter notebook
```

Isso iniciará o servidor Jupyter e fornecerá uma URL (geralmente começando com `http://127.0.0.1:8888/...` ou `http://localhost:8888/...`) contendo um token. Copie e cole essa URL em seu navegador para acessar a interface do Jupyter.
