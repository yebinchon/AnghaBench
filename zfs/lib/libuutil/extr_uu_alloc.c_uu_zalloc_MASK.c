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
 int /*<<< orphan*/  UU_ERROR_SYSTEM ; 
 void* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void *
FUNC3(size_t n)
{
	void *p = FUNC0(n);

	if (p == NULL) {
		FUNC2(UU_ERROR_SYSTEM);
		return (NULL);
	}

	(void) FUNC1(p, 0, n);

	return (p);
}