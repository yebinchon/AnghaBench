
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int count ;
typedef scalar_t__ UINT ;
typedef int LPCWSTR ;
typedef int LPBYTE ;
typedef int HKEY ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_SUCCESS ;
 int RegCloseKey (int ) ;
 scalar_t__ RegQueryValueExW (int ,int ,int *,scalar_t__*,int ,scalar_t__*) ;
 int openSharedDLLsKey () ;

__attribute__((used)) static UINT ACTION_GetSharedDLLsCount(LPCWSTR dll)
{
    HKEY hkey;
    DWORD count=0;
    DWORD type;
    DWORD sz = sizeof(count);
    DWORD rc;

    hkey = openSharedDLLsKey();
    rc = RegQueryValueExW(hkey, dll, ((void*)0), &type, (LPBYTE)&count, &sz);
    if (rc != ERROR_SUCCESS)
        count = 0;
    RegCloseKey(hkey);
    return count;
}
