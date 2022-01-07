
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int LPCWSTR ;
typedef int BOOL ;


 scalar_t__ ConvertPath (int ,int *) ;
 char* DRIVER_NAME ;
 int FALSE ;
 scalar_t__ LoadVia_SystemExtendServiceTableInformation (int *) ;
 scalar_t__ LoadVia_SystemLoadGdiDriverInformation (int *) ;
 int MAX_PATH ;
 int NtStopDriver (char*) ;
 int TRUE ;
 int wprintf (char*,...) ;

__attribute__((used)) static BOOL
SneakyUndocumentedMethods(LPCWSTR lpDriverPath)
{
    WCHAR szDevice[MAX_PATH];

    if (ConvertPath(lpDriverPath, szDevice))
    {
        wprintf(L"\nStarting %s.sys via NtSetSystemInformation with SystemLoadGdiDriverInformation\n", DRIVER_NAME);
        if (LoadVia_SystemLoadGdiDriverInformation(szDevice))
        {
            wprintf(L"\tStarted\n");

            NtStopDriver(DRIVER_NAME);
        }

        wprintf(L"\nStarting %s.sys via NtSetSystemInformation with SystemExtendServiceTableInformation\n", DRIVER_NAME);
        if (LoadVia_SystemExtendServiceTableInformation(szDevice))
        {
            wprintf(L"\tStarted\n");

            NtStopDriver(DRIVER_NAME);
        }

        return TRUE;
    }

    return FALSE;
}
