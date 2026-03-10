#!/usr/bin/env bash
# Render build script — installs system deps for dlib/face_recognition
set -e

echo "==> Installing system dependencies for dlib..."
apt-get update -qq
apt-get install -y --no-install-recommends \
    cmake \
    libopenblas-dev \
    liblapack-dev \
    libx11-dev \
    libboost-python-dev \
    build-essential

echo "==> Installing Python packages..."
pip install --upgrade pip
pip install -r requirements.txt

echo "==> Build complete!"
