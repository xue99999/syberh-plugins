#-------------------------------------------------
#
# Project created by QtCreator 2020-04-14T20:42:07
#
#-------------------------------------------------

QT       -= gui

TARGET = brightness
TEMPLATE = lib

DEFINES += BRIGHTNESS_LIBRARY

SOURCES += brightness.cpp

HEADERS += brightness.h\
        brightness_global.h

CONFIG += link_pkgconfig
CONFIG += C++11

PKGCONFIG += syberos-qt

INCLUDEPATH += $$absolute_path("nativesdk/src", $$SYBERH_APP)
INCLUDEPATH += $$absolute_path("pluginmanager/src", $$SYBERH_APP)

LIB_OUT_DIR = $$absolute_path("lib", $$SYBERH_APP)
LIBS += -L$$LIB_OUT_DIR -lnativesdk -lpluginmanager

DESTDIR = $$absolute_path("plugins", $$SYBERH_APP)
