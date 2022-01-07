
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* PBYTE ;
typedef int DWORD ;
typedef int BYTE ;



__attribute__((used)) static __inline void
_FixStringA(PBYTE String, DWORD cbString)
{
    const PBYTE pLastCharacter = &String[cbString / sizeof(BYTE) - 1];
    PBYTE p = String;

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
