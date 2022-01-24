#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int TickCountQuad; int TickCountMultiplier; } ;
typedef  int LONG ;
typedef  TYPE_1__ KSHARED_USER_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void FUNC4(void)
{
#ifndef _WIN64
    KSHARED_USER_DATA *user_shared_data = (void *)0x7ffe0000;
    LONG diff;
    int i;

    if (!&pNtGetTickCount)
    {
        FUNC3("NtGetTickCount is not available\n");
        return;
    }

    for (i = 0; i < 5; ++i)
    {
        diff = (user_shared_data->TickCountQuad * user_shared_data->TickCountMultiplier) >> 24;
        diff = FUNC2() - diff;
        FUNC1(diff < 32, "NtGetTickCount - TickCountQuad too high, expected < 32 got %d\n", diff);
        FUNC0(50);
    }
#endif
}