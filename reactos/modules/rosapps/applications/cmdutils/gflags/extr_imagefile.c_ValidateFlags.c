
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_3__ {int wDest; size_t dwFlag; } ;
typedef size_t DWORD ;


 size_t ARRAYSIZE (TYPE_1__*) ;
 TYPE_1__* g_Flags ;

__attribute__((used)) static DWORD ValidateFlags(DWORD GlobalFlags, WORD Dest)
{
    DWORD n;
    DWORD Valid = 0;

    for (n = 0; n < ARRAYSIZE(g_Flags); ++n)
    {
        if (g_Flags[n].wDest & Dest)
        {
            Valid |= g_Flags[n].dwFlag;
        }
    }

    return GlobalFlags & Valid;
}
