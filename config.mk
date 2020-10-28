# dwm version
VERSION = 6.2-cpp

# Customize below to fit your system

# paths
PREFIX = /usr/local
MANPREFIX = ${PREFIX}/share/man

X11INC = /usr/X11/include
X11LIB = /usr/X11/lib

## Xinerama, comment if you don't want it
#XINERAMALIBS  = -lXinerama
#XINERAMAFLAGS = -DXINERAMA

# freetype
FREETYPELIBS = -lfontconfig -lXft
FREETYPEINC = /usr/include/freetype2
# OpenBSD (uncomment)
#FREETYPEINC = ${X11INC}/freetype2

# yajl
YAJLLIBS = -lyajl
YAJLINC = /usr/include/yajl

# includes and libs
INCS = -I${X11INC} -I${FREETYPEINC} -I${YAJLINC}
#${XINERAMALIBS}
LIBS = -L${X11LIB} -lX11 ${FREETYPELIBS} ${YAJLLIBS} -lfmt

# flags
#${XINERAMAFLAGS}
CPPFLAGS = -D_DEFAULT_SOURCE -D_BSD_SOURCE -D_POSIX_C_SOURCE=200809L -DVERSION=\"${VERSION}\" 
#CFLAGS   = -g -std=c99 -pedantic -Wall -O0 ${INCS} ${CPPFLAGS}
CFLAGS   = -std=c++20 -pedantic -Wall -Wno-deprecated-declarations -Os ${INCS} ${CPPFLAGS}
CPPFLAGS += -D_DEFAULT_SOURCE 
CXXFLAGS =  -std=c++20
CXXFLAGS += -pedantic
CXXFLAGS += -Wall -Wextra
CXXFLAGS += -Wno-deprecated-declarations
CXXFLAGS += -Wno-unused-parameter
CXXFLAGS += -g -O0 -Os ${INCS} ${CPPFLAGS}
CXXFLAGS += -fpermissive
LDFLAGS  = ${LIBS}

# Solaris
#CFLAGS = -fast ${INCS} -DVERSION=\"${VERSION}\"
#LDFLAGS = ${LIBS}

# compiler and linker
CC = g++
