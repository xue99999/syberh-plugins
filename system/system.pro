#-------------------------------------------------
#
# Project created by QtCreator 2020-04-15T20:36:58
#
#-------------------------------------------------

QT       += gui

TARGET = system
TEMPLATE = lib

DEFINES += SYSTEM_LIBRARY

SOURCES += system.cpp

HEADERS += system.h\
        system_global.h

CONFIG += link_pkgconfig
CONFIG += C++11

PKGCONFIG += syberos-qt


INCLUDEPATH += $$absolute_path("nativesdk/src", $$SYBERH_APP)
INCLUDEPATH += $$absolute_path("pluginmanager/src", $$SYBERH_APP)

LIB_OUT_DIR = $$absolute_path("lib", $$SYBERH_APP)
LIBS += -L$$LIB_OUT_DIR -lnativesdk -lpluginmanager

DESTDIR = $$absolute_path("plugins", $$SYBERH_APP)
