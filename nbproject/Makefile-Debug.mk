#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc
CCC=g++
CXX=g++
FC=gfortran
AS=as

# Macros
CND_PLATFORM=GNU-Linux
CND_DLIB_EXT=so
CND_CONF=Debug
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/main.o


# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=
CXXFLAGS=

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=../RVStuff/libmqttrv/dist/Debug/GNU-Linux/liblibmqttrv.a -lavahi-client /usr/lib/x86_64-linux-gnu/libavahi-common.a /usr/lib/x86_64-linux-gnu/libmosquitto.so /usr/local/lib/liblogger_library.a

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/avahi_mqtt

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/avahi_mqtt: ../RVStuff/libmqttrv/dist/Debug/GNU-Linux/liblibmqttrv.a

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/avahi_mqtt: /usr/lib/x86_64-linux-gnu/libavahi-common.a

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/avahi_mqtt: /usr/lib/x86_64-linux-gnu/libmosquitto.so

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/avahi_mqtt: /usr/local/lib/liblogger_library.a

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/avahi_mqtt: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${LINK.c} -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/avahi_mqtt ${OBJECTFILES} ${LDLIBSOPTIONS}

${OBJECTDIR}/main.o: main.c
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.c) -g -std=c99 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/main.o main.c

# Subprojects
.build-subprojects:
	cd ../RVStuff/libmqttrv && ${MAKE}  -f Makefile CONF=Debug

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} -r ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libmosquitto.so
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/avahi_mqtt

# Subprojects
.clean-subprojects:
	cd ../RVStuff/libmqttrv && ${MAKE}  -f Makefile CONF=Debug clean

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc