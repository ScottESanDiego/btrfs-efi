SET(CMAKE_SYSTEM_NAME Windows)

SET(CMAKE_C_COMPILER clang)
SET(CMAKE_SYSTEM_PROCESSOR ARM)

SET(CLANG_TARGET_TRIPLE thumbv7-w64-mingw32)
SET(CMAKE_C_COMPILER_TARGET thumbv7-w64-mingw32)

set(CMAKE_EXE_LINKER_FLAGS "-static -fuse-ld=lld")

set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

# choose a CPU that supports integer divisions
set(CMAKE_C_FLAGS "-mcpu=cortex-a15 -mfpu=none")

# FIXME - this doesn't work, as Clang mistakenly outputs a file with machine type 1c4 rather than 1c2
