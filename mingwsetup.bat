@rem You can use this script to setup the necessary libraries for building with MinGW on Windows

@rem We assume you use the default install directory of c:\PythonVERSION
@rem Change below if you don't

set PYTHONDIRBASE=c:\Python

@rem The location of Python dlls in the system32 directory - below is correct for Win NT/2k/XP etc
set WINSYS32=%systemroot%\system32

@set PYTHONVER=22

@if not exist %PYTHONDIRBASE%%PYTHONVER% goto no%PYTHONVER%
@if exist %PYTHONDIRBASE%%PYTHONVER%\libs\libpython%PYTHONVER%.a goto lib%PYTHONVER%ok
pexports %WINSYS32%\python%PYTHONVER%.dll > py%PYTHONVER%exports.def
dlltool --dllname python%PYTHONVER%.dll --def py%PYTHONVER%exports.def --output-lib %PYTHONDIRBASE%%PYTHONVER%\libs\libpython%PYTHONVER%.a
del py%PYTHONVER%exports.def
@goto lib%PYTHONVER%ok
:no22
@echo You do not have Python %PYTHONVER% installed
@goto py%PYTHONVER%done
:lib22ok
@echo MinGW is setup for Python %PYTHONVER%
:py22done

@set PYTHONVER=23

@if not exist %PYTHONDIRBASE%%PYTHONVER% goto no%PYTHONVER%
@if exist %PYTHONDIRBASE%%PYTHONVER%\libs\libpython%PYTHONVER%.a goto lib%PYTHONVER%ok
pexports %WINSYS32%\python%PYTHONVER%.dll > py%PYTHONVER%exports.def
dlltool --dllname python%PYTHONVER%.dll --def py%PYTHONVER%exports.def --output-lib %PYTHONDIRBASE%%PYTHONVER%\libs\libpython%PYTHONVER%.a
del py%PYTHONVER%exports.def
@goto lib%PYTHONVER%ok
:no23
@echo You do not have Python %PYTHONVER% installed
@goto py%PYTHONVER%done
:lib23ok
@echo MinGW is setup for Python %PYTHONVER%
:py23done

@set PYTHONVER=24

@if not exist %PYTHONDIRBASE%%PYTHONVER% goto no%PYTHONVER%
@if exist %PYTHONDIRBASE%%PYTHONVER%\libs\libpython%PYTHONVER%.a goto lib%PYTHONVER%ok
pexports %WINSYS32%\python%PYTHONVER%.dll > py%PYTHONVER%exports.def
dlltool --dllname python%PYTHONVER%.dll --def py%PYTHONVER%exports.def --output-lib %PYTHONDIRBASE%%PYTHONVER%\libs\libpython%PYTHONVER%.a
del py%PYTHONVER%exports.def
@goto lib%PYTHONVER%ok
:no24
@echo You do not have Python %PYTHONVER% installed
@goto py%PYTHONVER%done
:lib24ok
@echo MinGW is setup for Python %PYTHONVER%
:py24done

@rem clean out variables
@set PYTHONDIRBASE=
@set PYTHONVER=
@set WINSYS32=