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
typedef  int /*<<< orphan*/  u_longlong_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  DEV_PHYS_PATH ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  ZFS_EV_VDEV_GUID ; 
 int /*<<< orphan*/  g_zfshdl ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  zfsdle_vdev_online ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC7(nvlist_t *nvl)
{
	char *devname, name[MAXPATHLEN];
	uint64_t guid;

	if (FUNC1(nvl, ZFS_EV_VDEV_GUID, &guid) == 0) {
		FUNC2(name, "%llu", (u_longlong_t)guid);
	} else if (FUNC0(nvl, DEV_PHYS_PATH, &devname) == 0) {
		FUNC3(name, devname, MAXPATHLEN);
		FUNC5(name, MAXPATHLEN);
	} else {
		FUNC4(LOG_INFO, "zfs_deliver_dle: no guid or physpath");
	}

	if (FUNC6(g_zfshdl, zfsdle_vdev_online, name) != 1) {
		FUNC4(LOG_INFO, "zfs_deliver_dle: device '%s' not "
		    "found", name);
		return (1);
	}

	return (0);
}