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
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 void* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void *
FUNC3(size_t size)
{
	void *ptr;

	if (size == 0)
		FUNC0("xmalloc: zero size");
	ptr = FUNC1(size);
	if (ptr == NULL)
		FUNC0("xmalloc: allocating %zu bytes: %s",
		    size, FUNC2(errno));
	return ptr;
}