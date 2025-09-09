@echo off
setlocal enabledelayedexpansion

:MENU_LOOP
echo =======================
echo 	 MENU
echo =======================
echo Select an action:
echo 1 - Show current JDK version
echo 2 - Switch to JDK version 24.0.2
echo 3 - Switch to JDK version 17.0.12
echo 4 - Exit
echo =======================

choice /c 1234 /n /m "Enter a number to select an action:"
if %errorlevel% == 1 (
	set JAVA_VERSION=%JAVA_HOME%
	echo Value JAVA_VERSION: !JAVA_VERSION!
	pause
	cls
	goto MENU_LOOP
)
if %errorlevel% == 2 (
	:: Current JDK value
	set JAVA_VERSION=%JAVA_HOME%
	echo Value JAVA_VERSION: !JAVA_VERSION!
	:: Getting the required version
	set version="\jdk-24.0.2"
	setx JAVA_HOME "C:\Program Files\!version!" /m
	echo JDK version changed to 24.0.2 Restart running application
	pause
	cls
	goto MENU_LOOP
)
if %errorlevel% == 3 (
	:: Current JDK value
	set JAVA_VERSION=%JAVA_HOME%
	echo Value JAVA_VERSION: !JAVA_VERSION!
	:: Getting the required version
	set version="\Java\jdk-17"
	setx JAVA_HOME "C:\Program Files\!version!" /m
	echo JDK version changed to 17.0.12 Restart running application
	pause
	cls
	goto MENU_LOOP
)
if %errorlevel% == 4 (
	echo You decided to go out
	exit
)

goto MENU_LOOP