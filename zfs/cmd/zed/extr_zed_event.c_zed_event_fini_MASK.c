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
struct zed_conf {int zevent_fd; int /*<<< orphan*/ * zfs_hdl; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  ZFS_DEV ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 

void
FUNC7(struct zed_conf *zcp)
{
	if (!zcp)
		FUNC4("Failed zed_event_fini: %s", FUNC2(EINVAL));

	FUNC3();
	FUNC6();

	if (zcp->zevent_fd >= 0) {
		if (FUNC0(zcp->zevent_fd) < 0)
			FUNC5(LOG_WARNING, "Failed to close \"%s\": %s",
			    ZFS_DEV, FUNC2(errno));

		zcp->zevent_fd = -1;
	}
	if (zcp->zfs_hdl) {
		FUNC1(zcp->zfs_hdl);
		zcp->zfs_hdl = NULL;
	}
}