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
typedef  int ULONG ;
typedef  scalar_t__ PGDT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 

PGDT FUNC2(void)
{
ULONG gdtr[2];
PGDT pGdt;

    FUNC0();

	__asm__("sgdt %0;":"=m" (gdtr));
	pGdt=(PGDT)(((ULONG)(gdtr[1]<<16))|((ULONG)(gdtr[0]>>16)));

    FUNC1();

	return pGdt;
}