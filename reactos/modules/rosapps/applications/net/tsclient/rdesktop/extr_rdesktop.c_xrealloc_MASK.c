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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 void* FUNC2 (void*,int) ; 

void *
FUNC3(void *oldmem, int size)
{
	void *mem;

	if (size < 1)
		size = 1;
	mem = FUNC2(oldmem, size);
	if (mem == NULL)
	{
		FUNC0("xrealloc %d\n", size);
		FUNC1(1);
	}
	return mem;
}