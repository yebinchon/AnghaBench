
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef scalar_t__* PWSTR ;
typedef int DWORD ;



__attribute__((used)) static __inline void
_FixStringW(PWSTR String, DWORD cbString)
{
    const PWSTR pLastCharacter = &String[cbString / sizeof(WCHAR) - 1];
    PWSTR p = String;

    while (*p)
    {
        if (p == pLastCharacter)
        {
            *p = 0;
            break;
        }

        p++;
    }
}
