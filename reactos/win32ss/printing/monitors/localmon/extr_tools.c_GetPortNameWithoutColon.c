
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int PWSTR ;
typedef int* PCWSTR ;
typedef size_t DWORD ;


 int CopyMemory (int ,int*,size_t) ;
 int DllAllocSplMem (size_t) ;
 int ERR (char*,int ) ;
 size_t ERROR_INVALID_PARAMETER ;
 size_t ERROR_NOT_ENOUGH_MEMORY ;
 size_t ERROR_SUCCESS ;
 int GetLastError () ;
 size_t wcslen (int*) ;

DWORD
GetPortNameWithoutColon(PCWSTR pwszPortName, PWSTR* ppwszPortNameWithoutColon)
{
    DWORD cchPortNameWithoutColon;


    cchPortNameWithoutColon = wcslen(pwszPortName) - 1;


    if (pwszPortName[cchPortNameWithoutColon] != L':')
        return ERROR_INVALID_PARAMETER;


    *ppwszPortNameWithoutColon = DllAllocSplMem((cchPortNameWithoutColon + 1) * sizeof(WCHAR));
    if (!*ppwszPortNameWithoutColon)
    {
        ERR("DllAllocSplMem failed with error %lu!\n", GetLastError());
        return ERROR_NOT_ENOUGH_MEMORY;
    }



    CopyMemory(*ppwszPortNameWithoutColon, pwszPortName, cchPortNameWithoutColon * sizeof(WCHAR));

    return ERROR_SUCCESS;
}
