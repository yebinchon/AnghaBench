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
 void* FUNC1 (void*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void *
FUNC3(void *ptr, size_t nmemb, size_t size)
{
	void *new_ptr;

	if (nmemb == 0 || size == 0)
		FUNC0("xreallocarray: zero size");
	new_ptr = FUNC1(ptr, nmemb, size);
	if (new_ptr == NULL)
		FUNC0("xreallocarray: allocating %zu * %zu bytes: %s",
		    nmemb, size, FUNC2(errno));
	return new_ptr;
}