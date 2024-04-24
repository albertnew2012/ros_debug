# generated from ament/cmake/core/templates/nameConfig.cmake.in

# prevent multiple inclusion
if(_talk_listen_CONFIG_INCLUDED)
  # ensure to keep the found flag the same
  if(NOT DEFINED talk_listen_FOUND)
    # explicitly set it to FALSE, otherwise CMake will set it to TRUE
    set(talk_listen_FOUND FALSE)
  elseif(NOT talk_listen_FOUND)
    # use separate condition to avoid uninitialized variable warning
    set(talk_listen_FOUND FALSE)
  endif()
  return()
endif()
set(_talk_listen_CONFIG_INCLUDED TRUE)

# output package information
if(NOT talk_listen_FIND_QUIETLY)
  message(STATUS "Found talk_listen: 0.0.0 (${talk_listen_DIR})")
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "Package 'talk_listen' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  # optionally quiet the deprecation message
  if(NOT ${talk_listen_DEPRECATED_QUIET})
    message(DEPRECATION "${_msg}")
  endif()
endif()

# flag package as ament-based to distinguish it after being find_package()-ed
set(talk_listen_FOUND_AMENT_PACKAGE TRUE)

# include all config extra files
set(_extras "")
foreach(_extra ${_extras})
  include("${talk_listen_DIR}/${_extra}")
endforeach()
