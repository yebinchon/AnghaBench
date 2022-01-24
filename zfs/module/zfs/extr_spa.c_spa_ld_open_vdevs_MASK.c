#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_longlong_t ;
struct TYPE_7__ {scalar_t__ spa_config_source; scalar_t__ spa_missing_tvds; int spa_mode; int /*<<< orphan*/  spa_root_vdev; scalar_t__ spa_missing_tvds_allowed; scalar_t__ spa_trust_config; } ;
typedef  TYPE_1__ spa_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENXIO ; 
 int /*<<< orphan*/  FTAG ; 
 int FWRITE ; 
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  RW_WRITER ; 
 int /*<<< orphan*/  SCL_ALL ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ SPA_CONFIG_SRC_CACHEFILE ; 
 scalar_t__ SPA_CONFIG_SRC_SCAN ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ zfs_max_missing_tvds ; 
 scalar_t__ zfs_max_missing_tvds_cachefile ; 
 scalar_t__ zfs_max_missing_tvds_scan ; 

__attribute__((used)) static int
FUNC8(spa_t *spa)
{
	int error = 0;

	/*
	 * spa_missing_tvds_allowed defines how many top-level vdevs can be
	 * missing/unopenable for the root vdev to be still considered openable.
	 */
	if (spa->spa_trust_config) {
		spa->spa_missing_tvds_allowed = zfs_max_missing_tvds;
	} else if (spa->spa_config_source == SPA_CONFIG_SRC_CACHEFILE) {
		spa->spa_missing_tvds_allowed = zfs_max_missing_tvds_cachefile;
	} else if (spa->spa_config_source == SPA_CONFIG_SRC_SCAN) {
		spa->spa_missing_tvds_allowed = zfs_max_missing_tvds_scan;
	} else {
		spa->spa_missing_tvds_allowed = 0;
	}

	spa->spa_missing_tvds_allowed =
	    FUNC0(zfs_max_missing_tvds, spa->spa_missing_tvds_allowed);

	FUNC2(spa, SCL_ALL, FTAG, RW_WRITER);
	error = FUNC7(spa->spa_root_vdev);
	FUNC3(spa, SCL_ALL, FTAG);

	if (spa->spa_missing_tvds != 0) {
		FUNC5(spa, "vdev tree has %lld missing top-level "
		    "vdevs.", (u_longlong_t)spa->spa_missing_tvds);
		if (spa->spa_trust_config && (spa->spa_mode & FWRITE)) {
			/*
			 * Although theoretically we could allow users to open
			 * incomplete pools in RW mode, we'd need to add a lot
			 * of extra logic (e.g. adjust pool space to account
			 * for missing vdevs).
			 * This limitation also prevents users from accidentally
			 * opening the pool in RW mode during data recovery and
			 * damaging it further.
			 */
			FUNC5(spa, "pools with missing top-level "
			    "vdevs can only be opened in read-only mode.");
			error = FUNC1(ENXIO);
		} else {
			FUNC5(spa, "current settings allow for maximum "
			    "%lld missing top-level vdevs at this stage.",
			    (u_longlong_t)spa->spa_missing_tvds_allowed);
		}
	}
	if (error != 0) {
		FUNC4(spa, "unable to open vdev tree [error=%d]",
		    error);
	}
	if (spa->spa_missing_tvds != 0 || error != 0)
		FUNC6(spa->spa_root_vdev, 2);

	return (error);
}