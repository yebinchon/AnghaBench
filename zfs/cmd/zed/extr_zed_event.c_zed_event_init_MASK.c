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
struct zed_conf {scalar_t__ zevent_fd; int /*<<< orphan*/  zfs_hdl; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  ZFS_DEV ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void
FUNC6(struct zed_conf *zcp)
{
	if (!zcp)
		FUNC4("Failed zed_event_init: %s", FUNC2(EINVAL));

	zcp->zfs_hdl = FUNC0();
	if (!zcp->zfs_hdl)
		FUNC4("Failed to initialize libzfs");

	zcp->zevent_fd = FUNC1(ZFS_DEV, O_RDWR);
	if (zcp->zevent_fd < 0)
		FUNC4("Failed to open \"%s\": %s",
		    ZFS_DEV, FUNC2(errno));

	FUNC5(zcp->zfs_hdl);

	if (FUNC3() != 0)
		FUNC4("Failed to initialize disk events");
}