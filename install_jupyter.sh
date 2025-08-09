#!/bin/bash
#
# Script to install Jupyter Notebook on Termux
# Created based on the sequence provided by Jairo Ivo Castro Brito
#

echo "=================================================="
echo "Starting Jupyter Notebook Installation on Termux"
echo "=================================================="

# Step 1: Update and upgrade Termux packages
echo "\n[INFO] Updating and upgrading packages..."
pkg update -y && pkg upgrade -y

# Step 2: Install essential dependencies
echo "\n[INFO] Installing essential dependencies..."
pkg install build-essential libzmq fftw libsodium rust python git curl libandroid-sysv-semaphore tur-repo -y

# Step 3: Update package lists after adding new repo
echo "\n[INFO] Updating package lists again..."
pkg update -y

# Step 4: Install Clang 16
echo "\n[INFO] Installing Clang 16..."
pkg install clang-16 -y

# Step 5: Set Clang 16 as the default C Compiler for this session
echo "\n[INFO] Setting CC to clang-16 for this session..."
export CC=clang-16

# Step 6: Upgrade pip and install essential Python packages
echo "\n[INFO] Upgrading pip, setuptools, and wheel..."
pip install --upgrade pip setuptools wheel

# Step 7: Install Python dependencies for Jupyter
echo "\n[INFO] Installing Python dependencies (aiohttp, psutil)..."
pip install aiohttp
pip install psutil

# Step 8: Install Jupyter Notebook
echo "\n[INFO] Installing Jupyter Notebook..."
pip install notebook

echo "\n=================================================="
echo "Installation Complete!"
echo "To start Jupyter Notebook, run the command:"
echo "jupyter notebook"
echo "=================================================="
