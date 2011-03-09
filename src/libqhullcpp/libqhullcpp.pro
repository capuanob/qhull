# -------------------------------------------------
# libqhullcpp.pro -- Qt project for Qhull cpp shared library
# -------------------------------------------------


DESTDIR = ../../lib
TEMPLATE = lib
CONFIG += staticlib warn_on
CONFIG -= qt rtti
build_pass:CONFIG(debug, debug|release):{
   TARGET = qhullcpp-d
   OBJECTS_DIR = Debug
}else:build_pass:CONFIG(release, debug|release):{
   TARGET = qhullcpp
   OBJECTS_DIR = Release
}
MOC_DIR = moc

DEFINES += qh_QHpointer
INCLUDEPATH += ../../src
INCLUDEPATH += $$PWD # for MOC_DIR
*g++ {
    #QMAKE_CXXFLAGS_WARN_ON += -Wconversion # Qt conversion errors in qbitarray and qpalette
    QMAKE_CXXFLAGS_WARN_ON += -Werror # Treat warnings as errors
    QMAKE_CXXFLAGS_WARN_ON += -Wcast-qual -Wextra -Wwrite-strings
    QMAKE_CXXFLAGS_WARN_ON += -Wno-sign-conversion
}

SOURCES += ../road/RoadError.cpp
SOURCES += ../road/RoadLogEvent.cpp
SOURCES += Coordinates.cpp
SOURCES += QhullVertexSet.cpp
SOURCES += QhullHyperplane.cpp
SOURCES += PointCoordinates.cpp
SOURCES += Qhull.cpp
SOURCES += QhullFacet.cpp
SOURCES += QhullFacetList.cpp
SOURCES += QhullFacetSet.cpp
SOURCES += QhullPoint.cpp
SOURCES += QhullPoints.cpp
SOURCES += QhullPointSet.cpp
SOURCES += QhullQh.cpp
SOURCES += QhullRidge.cpp
SOURCES += QhullSet.cpp
SOURCES += QhullStat.cpp
SOURCES += QhullVertex.cpp
SOURCES += RboxPoints.cpp
SOURCES += UsingLibQhull.cpp

HEADERS += ../road/RoadError.h
HEADERS += ../road/RoadLogEvent.h
HEADERS += Coordinates.h
HEADERS += QhullHyperplane.h
HEADERS += functionObjects.h
HEADERS += PointCoordinates.h
HEADERS += Qhull.h
HEADERS += QhullError.h
HEADERS += QhullFacet.h
HEADERS += QhullFacetList.h
HEADERS += QhullFacetSet.h
HEADERS += QhullIterator.h
HEADERS += QhullLinkedList.h
HEADERS += QhullPoint.h
HEADERS += QhullPoints.h
HEADERS += QhullPointSet.h
HEADERS += QhullQh.h
HEADERS += QhullRidge.h
HEADERS += QhullSet.h
HEADERS += QhullSets.h
HEADERS += QhullStat.h
HEADERS += QhullVertex.h
HEADERS += RboxPoints.h
HEADERS += UsingLibQhull.h