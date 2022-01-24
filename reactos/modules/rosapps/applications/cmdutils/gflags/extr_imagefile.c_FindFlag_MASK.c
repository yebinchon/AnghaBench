#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int WORD ;
struct TYPE_3__ {int wDest; size_t dwFlag; int /*<<< orphan*/  szAbbr; } ;
typedef  int /*<<< orphan*/  PCWSTR ;
typedef  size_t DWORD ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__*) ; 
 TYPE_1__* g_Flags ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static DWORD FUNC2(PCWSTR Name, WORD Dest)
{
    DWORD n;

    for (n = 0; n < FUNC0(g_Flags); ++n)
    {
        if (g_Flags[n].wDest & Dest)
        {
            if (!FUNC1(Name, g_Flags[n].szAbbr))
            {
                return g_Flags[n].dwFlag;
            }
        }
    }

    return 0;
}