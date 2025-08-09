Jupyter Notebook on Termux (Android)
This repository provides a script and a step-by-step guide to install Jupyter Notebook on Android devices using the Termux app. This allows you to run a local Jupyter environment on your smartphone without relying on third-party apps that may have paid features.
This method was successfully tested on a Samsung S24 using Termux from F-Droid.
Installation
You can install Jupyter Notebook using the automated script or by following the manual steps.
Method 1: Automated Installation (Recommended)
 * Download the script:
   curl -O https://raw.githubusercontent.com/xToshiro/jupyter-on-android/main/install_jupyter.sh

 * Give execution permission to the script:
   chmod +x install_jupyter.sh

 * Run the script:
   ./install_jupyter.sh

The script will handle all the necessary steps.
Method 2: Manual Step-by-Step Installation
If you prefer to install it manually, open Termux and execute the following commands in order.
 * Update and upgrade Termux packages:
   pkg update && pkg upgrade

 * Install essential build tools and libraries:
   pkg install build-essential libzmq fftw libsodium rust python git curl libandroid-sysv-semaphore tur-repo

 * Update package lists again after adding the tur-repo:
   pkg update

 * Install the clang-16 compiler:
   pkg install clang-16

 * Set clang-16 as the C compiler for the current session. This is crucial for compiling some Python packages.
   export CC=clang-16

 * Upgrade Python's package manager (pip):
   pip install --upgrade pip setuptools wheel

 * Install required Python libraries:
   pip install aiohttp
pip install psutil

 * Finally, install Jupyter Notebook:
   pip install notebook

How to Use
After the installation is complete, you can start Jupyter Notebook at any time by running the following command in Termux:
jupyter notebook

This will start the Jupyter server and provide you with a URL (usually starting with http://127.0.0.1:8888/... or http://localhost:8888/...) containing a token. Copy and paste this URL into your web browser to access the Jupyter interface.
Jupyter Notebook no Termux (Android)
Este repositório fornece um script e um guia passo a passo para instalar o Jupyter Notebook em dispositivos Android usando o aplicativo Termux. Isso permite que você execute um ambiente Jupyter local em seu smartphone, sem depender de aplicativos de terceiros que possam ter funções pagas.
Este método foi testado com sucesso em um Samsung S24 usando o Termux do F-Droid.
Instalação
Você pode instalar o Jupyter Notebook usando o script automatizado ou seguindo os passos manuais.
Método 1: Instalação Automatizada (Recomendado)
 * Baixe o script:
   curl -O https://raw.githubusercontent.com/xToshiro/jupyter-on-android/main/install_jupyter.sh

 * Dê permissão de execução para o script:
   chmod +x install_jupyter.sh

 * Execute o script:
   ./install_jupyter.sh

   O script cuidará de todos os passos necessários.
Método 2: Instalação Manual Passo a Passo
Se preferir instalar manualmente, abra o Termux e execute os seguintes comandos em ordem.
 * Atualize os pacotes do Termux:
   pkg update && pkg upgrade

 * Instale as ferramentas de compilação e bibliotecas essenciais:
   pkg install build-essential libzmq fftw libsodium rust python git curl libandroid-sysv-semaphore tur-repo

 * Atualize as listas de pacotes novamente após adicionar o tur-repo:
   pkg update

 * Instale o compilador clang-16:
   pkg install clang-16

 * Defina o clang-16 como o compilador C para a sessão atual. Isso é crucial para a compilação de alguns pacotes Python.
   export CC=clang-16

 * Atualize o gerenciador de pacotes do Python (pip):
   pip install --upgrade pip setuptools wheel

 * Instale as bibliotecas Python necessárias:
   pip install aiohttp
pip install psutil

 * Finalmente, instale o Jupyter Notebook:
   pip install notebook

Como Usar
Após a conclusão da instalação, você pode iniciar o Jupyter Notebook a qualquer momento executando o seguinte comando no Termux:
jupyter notebook

Isso iniciará o servidor Jupyter e fornecerá uma URL (geralmente começando com http://127.0.0.1:8888/... ou http://localhost:8888/...) contendo um token. Copie e cole essa URL em seu navegador para acessar a interface do Jupyter.
