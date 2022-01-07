
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int dwSize; } ;
struct TYPE_5__ {int GrantedAccess; int * pwszObject; } ;
typedef int * PWSTR ;
typedef TYPE_1__* PLOCALMON_XCV ;
typedef scalar_t__* PDWORD ;
typedef scalar_t__ PBYTE ;
typedef TYPE_2__* LPCOMMCONFIG ;
typedef int * HANDLE ;
typedef scalar_t__ DWORD ;


 int DllFreeSplMem (int *) ;
 int ERR (char*,scalar_t__) ;
 scalar_t__ ERROR_ACCESS_DENIED ;
 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ GetLastError () ;
 scalar_t__ GetPortNameWithoutColon (int *,int **) ;
 int ImpersonatePrinterClient (int *) ;
 int * RevertToPrinterSelf () ;
 int SERVER_ACCESS_ADMINISTER ;
 int SetDefaultCommConfigW (int *,TYPE_2__*,int ) ;

__attribute__((used)) static DWORD
_HandleSetDefaultCommConfig(PLOCALMON_XCV pXcv, PBYTE pInputData, PDWORD pcbOutputNeeded)
{
    DWORD dwErrorCode;
    HANDLE hToken = ((void*)0);
    LPCOMMCONFIG pCommConfig;
    PWSTR pwszPortNameWithoutColon = ((void*)0);



    if (!pXcv || !pXcv->pwszObject || !pXcv->pwszObject[0] || !pXcv->pwszObject[1] || !pInputData || !pcbOutputNeeded)
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


    dwErrorCode = GetPortNameWithoutColon(pXcv->pwszObject, &pwszPortNameWithoutColon);
    if (dwErrorCode != ERROR_SUCCESS)
        goto Cleanup;


    hToken = RevertToPrinterSelf();
    if (!hToken)
    {
        dwErrorCode = GetLastError();
        ERR("RevertToPrinterSelf failed with error %lu!\n", dwErrorCode);
        goto Cleanup;
    }


    pCommConfig = (LPCOMMCONFIG)pInputData;
    if (!SetDefaultCommConfigW(pwszPortNameWithoutColon, pCommConfig, pCommConfig->dwSize))
    {
        dwErrorCode = GetLastError();
        ERR("SetDefaultCommConfigW failed with error %lu!\n", dwErrorCode);
        goto Cleanup;
    }

    dwErrorCode = ERROR_SUCCESS;

Cleanup:
    if (hToken)
        ImpersonatePrinterClient(hToken);

    if (pwszPortNameWithoutColon)
        DllFreeSplMem(pwszPortNameWithoutColon);

    return dwErrorCode;
}
