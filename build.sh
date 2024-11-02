#!/bin/bash
# Specify the folder path
BUILD_FOLDER="./build"
BUILD_FOLDER_DEBUG="./cmake-build-debug/"

# Check if the folder exists
if [ -d "$BUILD_FOLDER" ]; then
    echo "cleaning previous build environment..."
    rm -rf "$BUILD_FOLDER/*"
    rm -rf "$BUILD_FOLDER_DEBUG"
    echo "build environment successfully cleaned."
else
    echo "no detected build environment - creating new...."
    mkdir "$BUILD_FOLDER"
    echo "new build envoronment successfully created."
fi

cd "$BUILD_FOLDER"

# Run cmake and check if it succeeds
if cmake ..; then
    echo "CMake configuration successful. Starting make..."
    # Run make
    if make; then
        echo "Make compilation successful."
    else
        echo "Make compilation failed."
        exit 1
    fi
else
    echo "CMake configuration failed."
    exit 1
fi