
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SERVICE_STATUS ;
typedef int SC_HANDLE ;
typedef int LPCWSTR ;
typedef scalar_t__ BOOL ;


 int CloseServiceHandle (int ) ;
 scalar_t__ ControlService (int ,int ,int *) ;
 char* DRIVER_NAME ;
 scalar_t__ ERROR_SERVICE_NOT_ACTIVE ;
 scalar_t__ FALSE ;
 scalar_t__ GetLastError () ;
 int OpenSCManagerW (int *,int *,int ) ;
 int OpenServiceW (int ,int ,int ) ;
 int SC_MANAGER_ALL_ACCESS ;
 int SERVICE_ALL_ACCESS ;
 int SERVICE_CONTROL_STOP ;
 scalar_t__ TRUE ;
 int wprintf (char*,char*) ;

BOOL
StopDriver(LPCWSTR lpDriverName)
{
    SC_HANDLE hSCManager;
    SC_HANDLE hService;
    SERVICE_STATUS serviceStatus;
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

    bRet = ControlService(hService,
                          SERVICE_CONTROL_STOP,
                          &serviceStatus);
    if (!bRet)
    {
        if (GetLastError() == ERROR_SERVICE_NOT_ACTIVE)
        {
            wprintf(L"%s.sys wasn't running\n", DRIVER_NAME);
            bRet = TRUE;
        }
    }

    CloseServiceHandle(hService);
    CloseServiceHandle(hSCManager);

    return bRet;
}
