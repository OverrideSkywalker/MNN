# The Lib Prefix
if (UNIX)
  set(LIB_PFX "lib")
  if (APPLE)
    set(LIB_EXT ".dylib")
  else ()
    set(LIB_EXT ".so")
  endif ()
else (UNIX)
  set(LIB_PFX "")
  set(LIB_EXT ".dll")
endif (UNIX)

if(CMAKE_SYSTEM_NAME MATCHES "^Android")
  set(SYSTEM.Android 1)
elseif(CMAKE_SYSTEM_NAME MATCHES "^Linux")
  set(SYSTEM.Linux 1)
endif()

if(CMAKE_SYSTEM_PROCESSOR MATCHES "^arm")
  set(PROCESSOR.arm 1)
elseif(CMAKE_SYSTEM_PROCESSOR MATCHES "^aarch64")
  set(PROCESSOR.aarch64 1)
elseif(CMAKE_SYSTEM_PROCESSOR MATCHES "^x86")
  set(PROCESSOR.x86 1)
endif()

# The Compilter ID
if ("${CMAKE_CXX_COMPILER_ID}" STREQUAL "Clang")
  set(COMPILER_NAME "CLANG")
elseif ("${CMAKE_CXX_COMPILER_ID}" STREQUAL "GNU")
  set(COMPILER_NAME "GCC")
elseif ("${CMAKE_CXX_COMPILER_ID}" STREQUAL "Intel")
  # using Intel C++
elseif ("${CMAKE_CXX_COMPILER_ID}" STREQUAL "MSVC")
  set(COMPILER_NAME "MSVC")
endif()
