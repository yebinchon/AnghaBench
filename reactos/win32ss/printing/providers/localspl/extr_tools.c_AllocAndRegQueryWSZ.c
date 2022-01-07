
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * PWSTR ;
typedef int PCWSTR ;
typedef int * PBYTE ;
typedef scalar_t__ LONG ;
typedef int HKEY ;
typedef int DWORD ;


 int * DllAllocSplMem (int ) ;
 int DllFreeSplMem (int *) ;
 int ERR (char*,...) ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ RegQueryValueExW (int ,int ,int *,int *,int *,int *) ;

PWSTR
AllocAndRegQueryWSZ(HKEY hKey, PCWSTR pwszValueName)
{
    DWORD cbNeeded;
    LONG lStatus;
    PWSTR pwszValue;


    lStatus = RegQueryValueExW(hKey, pwszValueName, ((void*)0), ((void*)0), ((void*)0), &cbNeeded);
    if (lStatus != ERROR_SUCCESS)
    {
        ERR("RegQueryValueExW failed with status %ld!\n", lStatus);
        return ((void*)0);
    }


    pwszValue = DllAllocSplMem(cbNeeded);
    if (!pwszValue)
    {
        ERR("DllAllocSplMem failed!\n");
        return ((void*)0);
    }


    lStatus = RegQueryValueExW(hKey, pwszValueName, ((void*)0), ((void*)0), (PBYTE)pwszValue, &cbNeeded);
    if (lStatus != ERROR_SUCCESS)
    {
        ERR("RegQueryValueExW failed with status %ld!\n", lStatus);
        DllFreeSplMem(pwszValue);
        return ((void*)0);
    }

    return pwszValue;
}
