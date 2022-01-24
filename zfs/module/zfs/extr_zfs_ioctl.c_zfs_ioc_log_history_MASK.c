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
typedef  int /*<<< orphan*/  spa_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOTSUP ; 
 int /*<<< orphan*/  FTAG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SPA_VERSION_ZPOOL_HISTORY ; 
 char* FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int FUNC5 (char*,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zfs_allow_log_key ; 

__attribute__((used)) static int
FUNC9(const char *unused, nvlist_t *innvl, nvlist_t *outnvl)
{
	char *message;
	spa_t *spa;
	int error;
	char *poolname;

	/*
	 * The poolname in the ioctl is not set, we get it from the TSD,
	 * which was set at the end of the last successful ioctl that allows
	 * logging.  The secpolicy func already checked that it is set.
	 * Only one log ioctl is allowed after each successful ioctl, so
	 * we clear the TSD here.
	 */
	poolname = FUNC7(zfs_allow_log_key);
	if (poolname == NULL)
		return (FUNC0(EINVAL));
	(void) FUNC8(zfs_allow_log_key, NULL);
	error = FUNC5(poolname, &spa, FTAG);
	FUNC2(poolname);
	if (error != 0)
		return (error);

	message = FUNC1(innvl, "message");

	if (FUNC6(spa) < SPA_VERSION_ZPOOL_HISTORY) {
		FUNC3(spa, FTAG);
		return (FUNC0(ENOTSUP));
	}

	error = FUNC4(spa, message);
	FUNC3(spa, FTAG);
	return (error);
}