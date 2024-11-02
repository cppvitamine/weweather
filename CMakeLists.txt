cmake_minimum_required(VERSION 3.29)

project(weweather LANGUAGES CXX C)

# turning off Apple OSX arch
set(APPLE FALSE)

# name of the target operating system and platform
set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR aarch64)

# compilers to use for C and C++
set(CMAKE_C_COMPILER   "/opt/toolchains/aarch64-unknown-linux-gnu/bin/aarch64-unknown-linux-gnu-gcc")
set(CMAKE_CXX_COMPILER "/opt/toolchains/aarch64-unknown-linux-gnu/bin/aarch64-unknown-linux-gnu-g++")

# target C++ standard
set(CMAKE_CXX_STANDARD 20)

# adding inc + src dirs
set(SRC_DIR src)
set(INC_DIR inc)

set(SRC_FILES
        ${SRC_DIR}/main.cpp
)

add_executable(${PROJECT_NAME} ${SRC_FILES})