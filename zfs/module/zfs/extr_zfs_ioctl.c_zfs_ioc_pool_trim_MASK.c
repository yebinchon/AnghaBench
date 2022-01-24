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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  spa_t ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int EINVAL ; 
 int /*<<< orphan*/  FTAG ; 
 scalar_t__ POOL_TRIM_CANCEL ; 
 scalar_t__ POOL_TRIM_START ; 
 scalar_t__ POOL_TRIM_SUSPEND ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  ZPOOL_TRIM_COMMAND ; 
 int /*<<< orphan*/  ZPOOL_TRIM_RATE ; 
 int /*<<< orphan*/  ZPOOL_TRIM_SECURE ; 
 int /*<<< orphan*/  ZPOOL_TRIM_VDEVS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC11 (char const*,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zfs_trim_metaslab_skip ; 

__attribute__((used)) static int
FUNC13(const char *poolname, nvlist_t *innvl, nvlist_t *outnvl)
{
	uint64_t cmd_type;
	if (FUNC7(innvl, ZPOOL_TRIM_COMMAND, &cmd_type) != 0)
		return (FUNC0(EINVAL));

	if (!(cmd_type == POOL_TRIM_CANCEL ||
	    cmd_type == POOL_TRIM_START ||
	    cmd_type == POOL_TRIM_SUSPEND)) {
		return (FUNC0(EINVAL));
	}

	nvlist_t *vdev_guids;
	if (FUNC6(innvl, ZPOOL_TRIM_VDEVS, &vdev_guids) != 0)
		return (FUNC0(EINVAL));

	for (nvpair_t *pair = FUNC8(vdev_guids, NULL);
	    pair != NULL; pair = FUNC8(vdev_guids, pair)) {
		uint64_t vdev_guid;
		if (FUNC9(pair, &vdev_guid) != 0) {
			return (FUNC0(EINVAL));
		}
	}

	/* Optional, defaults to maximum rate when not provided */
	uint64_t rate;
	if (FUNC7(innvl, ZPOOL_TRIM_RATE, &rate) != 0)
		rate = 0;

	/* Optional, defaults to standard TRIM when not provided */
	boolean_t secure;
	if (FUNC5(innvl, ZPOOL_TRIM_SECURE,
	    &secure) != 0) {
		secure = B_FALSE;
	}

	spa_t *spa;
	int error = FUNC11(poolname, &spa, FTAG);
	if (error != 0)
		return (error);

	nvlist_t *vdev_errlist = FUNC2();
	int total_errors = FUNC12(spa, vdev_guids, cmd_type,
	    rate, !!zfs_trim_metaslab_skip, secure, vdev_errlist);

	if (FUNC4(vdev_errlist) > 0)
		FUNC1(outnvl, ZPOOL_TRIM_VDEVS, vdev_errlist);

	FUNC3(vdev_errlist);

	FUNC10(spa, FTAG);
	return (total_errors > 0 ? EINVAL : 0);
}