cmake_minimum_required(VERSION 3.10...3.10)

project(AskAnything VERSION 1.0 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)


# Reproducible build flags
add_compile_options(
    -O2
    -ffile-prefix-map=${CMAKE_SOURCE_DIR}=.
)

add_link_options(
    -Wl,--build-id=none
)


add_executable(ask answer-to-anything.cpp)
