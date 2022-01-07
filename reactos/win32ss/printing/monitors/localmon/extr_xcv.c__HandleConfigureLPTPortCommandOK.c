
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_3__ {int GrantedAccess; } ;
typedef int PWSTR ;
typedef TYPE_1__* PLOCALMON_XCV ;
typedef scalar_t__* PDWORD ;
typedef scalar_t__ PBYTE ;
typedef int * HKEY ;
typedef scalar_t__ DWORD ;


 int ERR (char*,scalar_t__) ;
 scalar_t__ ERROR_ACCESS_DENIED ;
 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ GetLastError () ;
 int HKEY_LOCAL_MACHINE ;
 int ImpersonatePrinterClient (int *) ;
 int KEY_SET_VALUE ;
 int REG_SZ ;
 int RegCloseKey (int *) ;
 scalar_t__ RegOpenKeyExW (int ,char*,int ,int ,int **) ;
 scalar_t__ RegSetValueExW (int *,char*,int ,int ,scalar_t__,scalar_t__) ;
 int * RevertToPrinterSelf () ;
 int SERVER_ACCESS_ADMINISTER ;
 int wcslen (int ) ;

__attribute__((used)) static DWORD
_HandleConfigureLPTPortCommandOK(PLOCALMON_XCV pXcv, PBYTE pInputData, PDWORD pcbOutputNeeded)
{
    DWORD cbBuffer;
    DWORD dwErrorCode;
    HKEY hKey = ((void*)0);
    HKEY hToken = ((void*)0);


    if (!pXcv || !pInputData || !pcbOutputNeeded)
    {
        dwErrorCode = ERROR_INVALID_PARAMETER;
        goto Cleanup;
    }

    *pcbOutputNeeded = 0;


    if (!(pXcv->GrantedAccess & SERVER_ACCESS_ADMINISTER))
    {
        dwErrorCode = ERROR_ACCESS_DENIED;
        goto Cleanup;
    }


    hToken = RevertToPrinterSelf();
    if (!hToken)
    {
        dwErrorCode = GetLastError();
        ERR("RevertToPrinterSelf failed with error %lu!\n", dwErrorCode);
        goto Cleanup;
    }


    dwErrorCode = (DWORD)RegOpenKeyExW(HKEY_LOCAL_MACHINE, L"SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Windows", 0, KEY_SET_VALUE, &hKey);
    if (dwErrorCode != ERROR_SUCCESS)
    {
        ERR("RegOpenKeyExW failed with status %lu!\n", dwErrorCode);
        goto Cleanup;
    }


    cbBuffer = (wcslen((PWSTR)pInputData) + 1) * sizeof(WCHAR);


    dwErrorCode = (DWORD)RegSetValueExW(hKey, L"TransmissionRetryTimeout", 0, REG_SZ, pInputData, cbBuffer);
    if (dwErrorCode != ERROR_SUCCESS)
    {
        ERR("RegSetValueExW failed with status %lu!\n", dwErrorCode);
        goto Cleanup;
    }

Cleanup:
    if (hKey)
        RegCloseKey(hKey);

    if (hToken)
        ImpersonatePrinterClient(hToken);

    return dwErrorCode;
}
