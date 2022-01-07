
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SC_HANDLE ;
typedef int LPCWSTR ;
typedef int BOOL ;


 int CloseServiceHandle (int ) ;
 int DeleteService (int ) ;
 int FALSE ;
 int OpenSCManagerW (int *,int *,int ) ;
 int OpenServiceW (int ,int ,int ) ;
 int SC_MANAGER_ALL_ACCESS ;
 int SERVICE_ALL_ACCESS ;

BOOL
UnregisterDriver(LPCWSTR lpDriverName)
{
    SC_HANDLE hService;
    SC_HANDLE hSCManager;
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

    bRet = DeleteService(hService);

    CloseServiceHandle(hService);
    CloseServiceHandle(hSCManager);

    return bRet;
}
