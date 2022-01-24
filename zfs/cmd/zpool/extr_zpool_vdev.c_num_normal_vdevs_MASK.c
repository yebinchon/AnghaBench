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
typedef  size_t uint_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 scalar_t__ B_FALSE ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_ALLOCATION_BIAS ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_CHILDREN ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_IS_LOG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ***,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int
FUNC4(nvlist_t *nvroot)
{
	nvlist_t **top;
	uint_t t, toplevels, normal = 0;

	FUNC3(FUNC1(nvroot, ZPOOL_CONFIG_CHILDREN,
	    &top, &toplevels) == 0);

	for (t = 0; t < toplevels; t++) {
		uint64_t log = B_FALSE;

		(void) FUNC2(top[t], ZPOOL_CONFIG_IS_LOG, &log);
		if (log)
			continue;
		if (FUNC0(top[t], ZPOOL_CONFIG_ALLOCATION_BIAS))
			continue;

		normal++;
	}

	return (normal);
}