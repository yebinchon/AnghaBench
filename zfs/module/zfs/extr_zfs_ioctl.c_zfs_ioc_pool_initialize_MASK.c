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

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FTAG ; 
 scalar_t__ POOL_INITIALIZE_CANCEL ; 
 scalar_t__ POOL_INITIALIZE_START ; 
 scalar_t__ POOL_INITIALIZE_SUSPEND ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  ZPOOL_INITIALIZE_COMMAND ; 
 int /*<<< orphan*/  ZPOOL_INITIALIZE_VDEVS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC10 (char const*,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC12(const char *poolname, nvlist_t *innvl, nvlist_t *outnvl)
{
	uint64_t cmd_type;
	if (FUNC6(innvl, ZPOOL_INITIALIZE_COMMAND,
	    &cmd_type) != 0) {
		return (FUNC0(EINVAL));
	}

	if (!(cmd_type == POOL_INITIALIZE_CANCEL ||
	    cmd_type == POOL_INITIALIZE_START ||
	    cmd_type == POOL_INITIALIZE_SUSPEND)) {
		return (FUNC0(EINVAL));
	}

	nvlist_t *vdev_guids;
	if (FUNC5(innvl, ZPOOL_INITIALIZE_VDEVS,
	    &vdev_guids) != 0) {
		return (FUNC0(EINVAL));
	}

	for (nvpair_t *pair = FUNC7(vdev_guids, NULL);
	    pair != NULL; pair = FUNC7(vdev_guids, pair)) {
		uint64_t vdev_guid;
		if (FUNC8(pair, &vdev_guid) != 0) {
			return (FUNC0(EINVAL));
		}
	}

	spa_t *spa;
	int error = FUNC10(poolname, &spa, FTAG);
	if (error != 0)
		return (error);

	nvlist_t *vdev_errlist = FUNC2();
	int total_errors = FUNC11(spa, vdev_guids, cmd_type,
	    vdev_errlist);

	if (FUNC4(vdev_errlist) > 0) {
		FUNC1(outnvl, ZPOOL_INITIALIZE_VDEVS,
		    vdev_errlist);
	}
	FUNC3(vdev_errlist);

	FUNC9(spa, FTAG);
	return (total_errors > 0 ? EINVAL : 0);
}