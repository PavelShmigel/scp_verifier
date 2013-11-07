TEMPLATE = lib

INCLUDEPATH += ../sc-machine/sc-memory/src
INCLUDEPATH += ../sc-machine/sc-memory/src/sc-store
DESTDIR = ../sc-machine/bin/extensions
OBJECTS_DIR = ./obj

win32 {
    CONFIG += qt console
    LIBS += -L "../sc-machine/bin" -lsc_memoryd

    INCLUDEPATH += "../glib/include/glib-2.0"
    INCLUDEPATH += "../glib/lib/glib-2.0/include"

    POST_TARGETDEPS += ../glib/lib/glib-2.0.lib
    LIBS += ../glib/lib/glib-2.0.lib
}

unix {
    LIBS += -L "../sc-machine/bin" -lsc_memory
    CONFIG += link_pkgconfig

    PKGCONFIG += glib-2.0
    PKGCONFIG += gmodule-2.0
}

HEADERS += \
    src/scp_verifier.h \

SOURCES += \
    src/scp_verifier.c \
