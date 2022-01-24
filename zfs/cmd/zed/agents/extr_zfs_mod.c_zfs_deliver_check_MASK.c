#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nvlist_t ;
struct TYPE_3__ {scalar_t__ dd_pool_guid; scalar_t__ dd_vdev_guid; int /*<<< orphan*/  dd_func; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ dev_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  ZFS_EV_POOL_GUID ; 
 int /*<<< orphan*/  ZFS_EV_VDEV_GUID ; 
 int /*<<< orphan*/  g_zfshdl ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  zfs_iter_pool ; 
 int /*<<< orphan*/  zfs_process_add ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC3(nvlist_t *nvl)
{
	dev_data_t data = { 0 };

	if (FUNC0(nvl, ZFS_EV_POOL_GUID,
	    &data.dd_pool_guid) != 0 ||
	    FUNC0(nvl, ZFS_EV_VDEV_GUID,
	    &data.dd_vdev_guid) != 0 ||
	    data.dd_vdev_guid == 0)
		return (0);

	FUNC1(LOG_INFO, "zfs_deliver_check: pool '%llu', vdev %llu",
	    data.dd_pool_guid, data.dd_vdev_guid);

	data.dd_func = zfs_process_add;

	(void) FUNC2(g_zfshdl, zfs_iter_pool, &data);

	return (0);
}