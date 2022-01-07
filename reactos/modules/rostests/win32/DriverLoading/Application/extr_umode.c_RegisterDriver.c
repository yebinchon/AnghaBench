
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ SC_HANDLE ;
typedef int LPCWSTR ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int CloseServiceHandle (scalar_t__) ;
 scalar_t__ CreateServiceW (scalar_t__,int ,int ,int ,int ,int ,int ,int ,int *,int *,int *,int *,int *) ;
 int DRIVER_NAME ;
 scalar_t__ ERROR_SERVICE_EXISTS ;
 scalar_t__ ERROR_SERVICE_MARKED_FOR_DELETE ;
 int FALSE ;
 scalar_t__ GetLastError () ;
 scalar_t__ OpenSCManagerW (int *,int *,int ) ;
 int SC_MANAGER_ALL_ACCESS ;
 int SERVICE_ALL_ACCESS ;
 int SERVICE_DEMAND_START ;
 int SERVICE_ERROR_NORMAL ;
 int SERVICE_KERNEL_DRIVER ;
 int StopDriver (int ) ;
 int TRUE ;

BOOL
RegisterDriver(LPCWSTR lpDriverName,
               LPCWSTR lpPathName)
{
    SC_HANDLE hSCManager;
    SC_HANDLE hService;

    hSCManager = OpenSCManagerW(((void*)0),
                                ((void*)0),
                                SC_MANAGER_ALL_ACCESS);
    if (!hSCManager)
        return FALSE;

retry:
    hService = CreateServiceW(hSCManager,
                              lpDriverName,
                              lpDriverName,
                              SERVICE_ALL_ACCESS,
                              SERVICE_KERNEL_DRIVER,
                              SERVICE_DEMAND_START,
                              SERVICE_ERROR_NORMAL,
                              lpPathName,
                              ((void*)0),
                              ((void*)0),
                              ((void*)0),
                              ((void*)0),
                              ((void*)0));

    if (hService)
    {
        CloseServiceHandle(hService);
        CloseServiceHandle(hSCManager);
        return TRUE;
    }
    else
    {
        DWORD err = GetLastError();

        if (err == ERROR_SERVICE_MARKED_FOR_DELETE)
        {
            StopDriver(DRIVER_NAME);
            goto retry;
        }

        CloseServiceHandle(hSCManager);


        return (err == ERROR_SERVICE_EXISTS);
    }
}
