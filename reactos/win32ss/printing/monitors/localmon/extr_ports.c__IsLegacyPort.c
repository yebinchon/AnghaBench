
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* PCWSTR ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 scalar_t__ _wcsnicmp (int*,int*,int const) ;

__attribute__((used)) static __inline BOOL
_IsLegacyPort(PCWSTR pwszPortName, PCWSTR pwszPortType)
{
    const DWORD cchPortType = 3;
    PCWSTR p = pwszPortName;


    if (_wcsnicmp(p, pwszPortType, cchPortType) != 0)
        return FALSE;

    p += cchPortType;


    while (*p >= L'0' && *p <= L'9')
        p++;


    if (*p != ':')
        return FALSE;


    p++;
    return (*p == L'\0');
}
