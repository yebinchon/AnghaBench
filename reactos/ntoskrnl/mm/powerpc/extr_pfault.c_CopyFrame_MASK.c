#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  ppc_trap_frame_t ;

/* Variables and functions */
 int FUNC0 (int) ; 

void FUNC1(int *oldframe, int *ourframe)
{
    int i;

    for (i = 0; i < sizeof(ppc_trap_frame_t) / sizeof(int); i++)
    {
        ourframe[i] = FUNC0((int)&oldframe[i]);
    }
}