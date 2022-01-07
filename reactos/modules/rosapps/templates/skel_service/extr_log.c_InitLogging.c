
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int VOID ;
typedef scalar_t__ DWORD ;


 int CloseHandle (int ) ;
 int DeleteFile (int ) ;
 int GetLastError () ;
 int LOG_ERROR ;
 int LOG_EVENTLOG ;
 int LogToEventLog (int ,int ,int ,int) ;
 scalar_t__ OpenLogFile () ;
 int WriteFile (int ,int*,int,scalar_t__*,int *) ;
 int _T (char*) ;
 int hLogFile ;
 int lpLogFileName ;

VOID
InitLogging()
{
    WCHAR wcBom = 0xFEFF;

    DeleteFile(lpLogFileName);
}
