#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  zpool_hdl; int /*<<< orphan*/  zfs_type; int /*<<< orphan*/  zfs_head_type; int /*<<< orphan*/  zfs_name; int /*<<< orphan*/  zfs_hdl; } ;
typedef  TYPE_1__ zfs_handle_t ;
struct TYPE_9__ {int /*<<< orphan*/  zc_name; } ;
typedef  TYPE_2__ zfs_cmd_t ;

/* Variables and functions */
 int /*<<< orphan*/  ZFS_TYPE_SNAPSHOT ; 
 TYPE_1__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

zfs_handle_t *
FUNC3(zfs_handle_t *pzhp, zfs_cmd_t *zc)
{
	zfs_handle_t *zhp = FUNC0(1, sizeof (zfs_handle_t));

	if (zhp == NULL)
		return (NULL);

	zhp->zfs_hdl = pzhp->zfs_hdl;
	(void) FUNC1(zhp->zfs_name, zc->zc_name, sizeof (zhp->zfs_name));
	zhp->zfs_head_type = pzhp->zfs_type;
	zhp->zfs_type = ZFS_TYPE_SNAPSHOT;
	zhp->zpool_hdl = FUNC2(zhp);

	return (zhp);
}