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
typedef  scalar_t__ zoneid_t ;
typedef  int /*<<< orphan*/  (* zfs_iter_f ) (int /*<<< orphan*/ *,void*) ;
typedef  int /*<<< orphan*/  zfs_handle_t ;
typedef  int /*<<< orphan*/  tpool_t ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;
typedef  int boolean_t ;

/* Variables and functions */
 scalar_t__ GLOBAL_ZONEID ; 
 int /*<<< orphan*/  ZFS_PROP_ZONED ; 
 int /*<<< orphan*/ * FUNC0 (char*) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  mount_tp_nthr ; 
 int /*<<< orphan*/  mountpoint_cmp ; 
 int FUNC2 (int /*<<< orphan*/ **,size_t,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,size_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,size_t,int,int /*<<< orphan*/  (*) (int /*<<< orphan*/ *,void*),void*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC9(libzfs_handle_t *hdl, zfs_handle_t **handles,
    size_t num_handles, zfs_iter_f func, void *data, boolean_t parallel)
{
	zoneid_t zoneid = FUNC1();

	/*
	 * The ZFS_SERIAL_MOUNT environment variable is an undocumented
	 * variable that can be used as a convenience to do a/b comparison
	 * of serial vs. parallel mounting.
	 */
	boolean_t serial_mount = !parallel ||
	    (FUNC0("ZFS_SERIAL_MOUNT") != NULL);

	/*
	 * Sort the datasets by mountpoint. See mountpoint_cmp for details
	 * of how these are sorted.
	 */
	FUNC3(handles, num_handles, sizeof (zfs_handle_t *), mountpoint_cmp);

	if (serial_mount) {
		for (int i = 0; i < num_handles; i++) {
			func(handles[i], data);
		}
		return;
	}

	/*
	 * Issue the callback function for each dataset using a parallel
	 * algorithm that uses a thread pool to manage threads.
	 */
	tpool_t *tp = FUNC4(1, mount_tp_nthr, 0, NULL);

	/*
	 * There may be multiple "top level" mountpoints outside of the pool's
	 * root mountpoint, e.g.: /foo /bar. Dispatch a mount task for each of
	 * these.
	 */
	for (int i = 0; i < num_handles;
	    i = FUNC2(handles, num_handles, i)) {
		/*
		 * Since the mountpoints have been sorted so that the zoned
		 * filesystems are at the end, a zoned filesystem seen from
		 * the global zone means that we're done.
		 */
		if (zoneid == GLOBAL_ZONEID &&
		    FUNC8(handles[i], ZFS_PROP_ZONED))
			break;
		FUNC7(hdl, handles, num_handles, i, func, data,
		    tp);
	}

	FUNC6(tp);	/* wait for all scheduled mounts to complete */
	FUNC5(tp);
}