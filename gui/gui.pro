######################################################################
# Automatically generated by qmake (2.01a) Thu Jul 28 15:36:38 2016
######################################################################

TEMPLATE = app
TARGET = gui
QT += widgets
DEPENDPATH += .
INCLUDEPATH += .
LIBS += -lparted

# Input
SOURCES += main.cpp \
    bootconfig.cpp \
    installmode.cpp \
    mainwindow.cpp \
    nixosjsonoptions.cpp

installer.files = gui
installer.path = /${out}/bin/

INSTALLS += installer

FORMS += \
    bootconfig.ui \
    installmode.ui \
    nixosjsonoptions.ui

HEADERS += \
    bootconfig.h \
    installmode.h \
    mainwindow.h \
    nixosjsonoptions.h

win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../libinstaller/release/ -llibinstaller
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../libinstaller/debug/ -llibinstaller
else:unix: LIBS += -L$$OUT_PWD/../libinstaller/ -llibinstaller

INCLUDEPATH += $$PWD/../libinstaller
DEPENDPATH += $$PWD/../libinstaller
