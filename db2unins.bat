@echo off

REM *************************************************************************
REM  Licensed Materials - Property of IBM                                    
REM                                                                          
REM  Governed under the terms of the International Program License Agreement.
REM                                                                          
REM  (C) COPYRIGHT International Business Machines Corp. 2005                
REM                                                                          
REM  All Rights Reserved.                                                    
REM                                                                          
REM  US Government Users Restricted Rights - Use, duplication or             
REM  disclosure restricted by GSA ADP Schedule Contract with IBM Corp.       
REM                                                                          
REM  File: db2unins                                                          
REM  This file will only be called when user runs db2unins from CD.          
REM  The db2unins.bat on the system is a totally different file.             
REM                                                                          
REM  Please type db2unins /? for command line reference.                     
REM  Please note that /d and /p are not supported if you run db2unins        
REM  from the CD.                                                            
REM                                                                          
REM *************************************************************************

pushd %temp%
copy "%~dp0db2unins" .\db2unins.exe > .\null
copy "%~dp0db2NewRegHKLM.txt" .\db2NewRegHKLM.txt > .\null
call db2unins.exe --CDpath "%~dp0db2\Windows\DB2 Express-C.msi" %1 %2 %3 %4 %5 %6 %7 %8 %9
if '%1'=='-?' popd
if '%1'=='/?' popd
if '%1'=='-h' popd
if '%1'=='/h' popd
if '%1'=='-H' popd
if '%1'=='/H' popd
if '%1'=='-d' popd
if '%1'=='-d' popd
if '%1'=='-D' popd
if '%1'=='/D' popd
cd "%~dp0"
