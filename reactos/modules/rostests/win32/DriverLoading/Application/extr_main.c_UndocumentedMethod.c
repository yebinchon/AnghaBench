
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCWSTR ;
typedef int BOOL ;


 char* DRIVER_NAME ;
 int FALSE ;
 int GetLastError () ;
 int NtStartDriver (char*) ;
 int NtStopDriver (char*) ;
 int TRUE ;
 int UnregisterDriver (char*) ;
 int wprintf (char*,...) ;

__attribute__((used)) static BOOL
UndocumentedMethod(LPCWSTR lpDriverPath)
{
    wprintf(L"\nStarting %s.sys via native API\n", DRIVER_NAME);

    if (!NtStartDriver(DRIVER_NAME))
    {
        wprintf(L"[%lu] Failed to start %s\n", GetLastError(), DRIVER_NAME);
        UnregisterDriver(DRIVER_NAME);
        return FALSE;
    }

    wprintf(L"\tStarted\n");

    wprintf(L"Stopping %s.sys  via native API\n", DRIVER_NAME);

    if (!NtStopDriver(DRIVER_NAME))
    {
        wprintf(L"[%lu] Failed to stop %s\n", GetLastError(), DRIVER_NAME);
        UnregisterDriver(DRIVER_NAME);
        return FALSE;
    }

    wprintf(L"\tStopped\n");

    return TRUE;
}
