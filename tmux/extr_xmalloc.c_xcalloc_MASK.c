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
 void* FUNC0 (size_t,size_t) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void *
FUNC3(size_t nmemb, size_t size)
{
	void *ptr;

	if (size == 0 || nmemb == 0)
		FUNC1("xcalloc: zero size");
	ptr = FUNC0(nmemb, size);
	if (ptr == NULL)
		FUNC1("xcalloc: allocating %zu * %zu bytes: %s",
		    nmemb, size, FUNC2(errno));
	return ptr;
}