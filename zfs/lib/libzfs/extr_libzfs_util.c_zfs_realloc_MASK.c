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
typedef  int /*<<< orphan*/  libzfs_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (void*,size_t) ; 

void *
FUNC3(libzfs_handle_t *hdl, void *ptr, size_t oldsize, size_t newsize)
{
	void *ret;

	if ((ret = FUNC2(ptr, newsize)) == NULL) {
		(void) FUNC1(hdl);
		return (NULL);
	}

	FUNC0((char *)ret + oldsize, (newsize - oldsize));
	return (ret);
}