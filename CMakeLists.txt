cmake_minimum_required(VERSION 3.25.1)

set(NAME helium)
set(VERSION 0.0.1)

project(
  ${NAME}
  LANGUAGES C
  VERSION ${VERSION})

set(CMAKE_C_STANDARD 17)
set(CMAKE_C_STANDARD_REQUIRED ON)

set(CMAKE_BUILD_TYPE Debug)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

set(CMAKE_BINARY_DIR build)
set(CMAKE_SOURCE_DIR src)

add_executable(${NAME} src/main.c src/greet.c)

target_include_directories(${NAME} PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)
