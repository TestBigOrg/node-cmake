set(IOJS_VARIANT_BASE "iojs")
set(IOJS_WIN32_BINARY_NAME  "${IOJS_VARIANT_BASE}.exe")
list(APPEND NodeJS_WIN32_DELAYLOAD ${IOJS_WIN32_BINARY_NAME})

if(NodeJS_FIND_REQUIRED_IOJS)
    set(NodeJS_VARIANT_NAME "io.js")
    set(NodeJS_VARIANT_BASE ${IOJS_VARIANT_BASE})
    set(NodeJS_URL "https://iojs.org/dist/${NodeJS_VERSION_STRING}")
    set(NodeJS_HEADER_VERSION 2.3.1)
    set(NodeJS_WIN32_BINARY_NAME "${IOJS_WIN32_BINARY_NAME}")
endif()

mark_as_advanced(
    IOJS_VARIANT_BASE
    IOJS_WIN32_BINARY_NAME
)