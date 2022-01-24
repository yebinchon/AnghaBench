#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ zfs_type; int /*<<< orphan*/  zfs_name; int /*<<< orphan*/  zfs_hdl; } ;
typedef  TYPE_1__ zfs_handle_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 scalar_t__ UINT64_MAX ; 
 int ZFS_MAX_DATASET_NAME_LEN ; 
 int /*<<< orphan*/  ZFS_PROP_CREATETXG ; 
 int /*<<< orphan*/  ZFS_PROP_ORIGIN ; 
 int /*<<< orphan*/  ZFS_TYPE_DATASET ; 
 scalar_t__ ZFS_TYPE_FILESYSTEM ; 
 scalar_t__ ZFS_TYPE_VOLUME ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static boolean_t
FUNC6(zfs_handle_t *earlier, zfs_handle_t *later)
{
	boolean_t ret;
	uint64_t later_txg =
	    (later->zfs_type == ZFS_TYPE_FILESYSTEM ||
	    later->zfs_type == ZFS_TYPE_VOLUME ?
	    UINT64_MAX : FUNC5(later, ZFS_PROP_CREATETXG));
	uint64_t earlier_txg = FUNC5(earlier, ZFS_PROP_CREATETXG);

	if (earlier_txg >= later_txg)
		return (B_FALSE);

	zfs_handle_t *earlier_dir = FUNC0(earlier->zfs_hdl,
	    earlier->zfs_name);
	zfs_handle_t *later_dir = FUNC0(later->zfs_hdl,
	    later->zfs_name);

	if (FUNC1(earlier_dir->zfs_name, later_dir->zfs_name) == 0) {
		FUNC2(earlier_dir);
		FUNC2(later_dir);
		return (B_TRUE);
	}

	char clonename[ZFS_MAX_DATASET_NAME_LEN];
	if (FUNC4(later_dir, ZFS_PROP_ORIGIN, clonename,
	    ZFS_MAX_DATASET_NAME_LEN, NULL, NULL, 0, B_TRUE) != 0) {
		FUNC2(earlier_dir);
		FUNC2(later_dir);
		return (B_FALSE);
	}

	zfs_handle_t *origin = FUNC3(earlier->zfs_hdl, clonename,
	    ZFS_TYPE_DATASET);
	uint64_t origin_txg = FUNC5(origin, ZFS_PROP_CREATETXG);

	/*
	 * If "earlier" is exactly the origin, then
	 * snapshot_is_before(earlier, origin) will return false (because
	 * they're the same).
	 */
	if (origin_txg == earlier_txg &&
	    FUNC1(origin->zfs_name, earlier->zfs_name) == 0) {
		FUNC2(earlier_dir);
		FUNC2(later_dir);
		FUNC2(origin);
		return (B_TRUE);
	}
	FUNC2(earlier_dir);
	FUNC2(later_dir);

	ret = FUNC6(earlier, origin);
	FUNC2(origin);
	return (ret);
}