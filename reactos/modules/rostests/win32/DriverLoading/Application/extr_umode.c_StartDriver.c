
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SC_HANDLE ;
typedef int LPCWSTR ;
typedef scalar_t__ BOOL ;


 int CloseServiceHandle (int ) ;
 char* DRIVER_NAME ;
 scalar_t__ ERROR_SERVICE_ALREADY_RUNNING ;
 scalar_t__ FALSE ;
 scalar_t__ GetLastError () ;
 int OpenSCManagerW (int *,int *,int ) ;
 int OpenServiceW (int ,int ,int ) ;
 int SC_MANAGER_ALL_ACCESS ;
 int SERVICE_ALL_ACCESS ;
 scalar_t__ StartServiceW (int ,int ,int *) ;
 scalar_t__ TRUE ;
 int wprintf (char*,char*) ;

BOOL
StartDriver(LPCWSTR lpDriverName)
{
    SC_HANDLE hSCManager;
    SC_HANDLE hService;
    BOOL bRet;

    hSCManager = OpenSCManagerW(((void*)0),
                                ((void*)0),
                                SC_MANAGER_ALL_ACCESS);
    if (!hSCManager)
        return FALSE;

    hService = OpenServiceW(hSCManager,
                            lpDriverName,
                            SERVICE_ALL_ACCESS);
    if (!hService)
    {
        CloseServiceHandle(hSCManager);
        return FALSE;
    }

    bRet = StartServiceW(hService, 0, ((void*)0));
    if (!bRet)
    {
        if (GetLastError() == ERROR_SERVICE_ALREADY_RUNNING)
        {
            wprintf(L"%s.sys already running\n", DRIVER_NAME);
            bRet = TRUE;
        }
    }

    CloseServiceHandle(hService);
    CloseServiceHandle(hSCManager);

    return bRet;
}
