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
typedef  int /*<<< orphan*/  zpool_handle_t ;
typedef  unsigned long long uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int FUNC0 (scalar_t__**) ; 
 unsigned long long IOS_DEFAULT_M ; 
 scalar_t__ ZPOOL_CONFIG_VDEV_STATS ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_VDEV_STATS_EX ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_VDEV_TREE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__** vsx_type_to_nvlist ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(zpool_handle_t *zhp, void *data)
{
	uint64_t *mask = data;
	nvlist_t *config, *nvroot, *nvx;
	uint64_t flags = 0;
	int i, j;

	config = FUNC4(zhp, NULL);
	FUNC3(FUNC2(config, ZPOOL_CONFIG_VDEV_TREE,
	    &nvroot) == 0);

	/* Default stats are always supported, but for completeness.. */
	if (FUNC1(nvroot, ZPOOL_CONFIG_VDEV_STATS))
		flags |= IOS_DEFAULT_M;

	/* Get our extended stats nvlist from the main list */
	if (FUNC2(nvroot, ZPOOL_CONFIG_VDEV_STATS_EX,
	    &nvx) != 0) {
		/*
		 * No extended stats; they're probably running an older
		 * module.  No big deal, we support that too.
		 */
		goto end;
	}

	/* For each extended stat, make sure all its nvpairs are supported */
	for (j = 0; j < FUNC0(vsx_type_to_nvlist); j++) {
		if (!vsx_type_to_nvlist[j][0])
			continue;

		/* Start off by assuming the flag is supported, then check */
		flags |= (1ULL << j);
		for (i = 0; vsx_type_to_nvlist[j][i]; i++) {
			if (!FUNC1(nvx, vsx_type_to_nvlist[j][i])) {
				/* flag isn't supported */
				flags = flags & ~(1ULL  << j);
				break;
			}
		}
	}
end:
	*mask = *mask & flags;
	return (0);
}