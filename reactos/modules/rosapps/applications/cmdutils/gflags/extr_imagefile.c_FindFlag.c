
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_3__ {int wDest; size_t dwFlag; int szAbbr; } ;
typedef int PCWSTR ;
typedef size_t DWORD ;


 size_t ARRAYSIZE (TYPE_1__*) ;
 TYPE_1__* g_Flags ;
 int wcsicmp (int ,int ) ;

__attribute__((used)) static DWORD FindFlag(PCWSTR Name, WORD Dest)
{
    DWORD n;

    for (n = 0; n < ARRAYSIZE(g_Flags); ++n)
    {
        if (g_Flags[n].wDest & Dest)
        {
            if (!wcsicmp(Name, g_Flags[n].szAbbr))
            {
                return g_Flags[n].dwFlag;
            }
        }
    }

    return 0;
}
