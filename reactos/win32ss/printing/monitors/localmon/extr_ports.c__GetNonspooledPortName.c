
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int * PWSTR ;
typedef int PCWSTR ;
typedef int DWORD ;


 int CopyMemory (int *,int ,int) ;
 int * DllAllocSplMem (int) ;
 int ERR (char*,int ) ;
 int ERROR_NOT_ENOUGH_MEMORY ;
 int ERROR_SUCCESS ;
 int GetLastError () ;
 int cchNonspooledPrefix ;
 int wcslen (int ) ;
 int wszNonspooledPrefix ;

__attribute__((used)) static __inline DWORD
_GetNonspooledPortName(PCWSTR pwszPortNameWithoutColon, PWSTR* ppwszNonspooledPortName)
{
    DWORD cchPortNameWithoutColon;

    cchPortNameWithoutColon = wcslen(pwszPortNameWithoutColon);

    *ppwszNonspooledPortName = DllAllocSplMem((cchNonspooledPrefix + cchPortNameWithoutColon + 1) * sizeof(WCHAR));
    if (!*ppwszNonspooledPortName)
    {
        ERR("DllAllocSplMem failed with error %lu!\n", GetLastError());
        return ERROR_NOT_ENOUGH_MEMORY;
    }

    CopyMemory(*ppwszNonspooledPortName, wszNonspooledPrefix, cchNonspooledPrefix * sizeof(WCHAR));
    CopyMemory(&(*ppwszNonspooledPortName)[cchNonspooledPrefix], pwszPortNameWithoutColon, (cchPortNameWithoutColon + 1) * sizeof(WCHAR));

    return ERROR_SUCCESS;
}
