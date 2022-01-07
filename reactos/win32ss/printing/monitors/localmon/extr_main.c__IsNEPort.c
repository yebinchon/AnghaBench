
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* PCWSTR ;
typedef int BOOL ;


 int FALSE ;

__attribute__((used)) static __inline BOOL
_IsNEPort(PCWSTR pwszPortName)
{
    PCWSTR p = pwszPortName;


    if (*p != L'N' && *p != L'n')
        return FALSE;


    p++;
    if (*p != L'E' && *p != L'e')
        return FALSE;


    p++;
    if (*p == L'-')
        p++;


    while (*p >= L'0' && *p <= L'9')
        p++;


    if (*p != ':')
        return FALSE;


    p++;
    return (*p == L'\0');
}
