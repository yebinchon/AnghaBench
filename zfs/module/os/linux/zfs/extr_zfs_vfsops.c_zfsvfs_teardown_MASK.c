#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {void* z_suspended; scalar_t__ z_sa_hdl; } ;
typedef  TYPE_2__ znode_t ;
struct TYPE_15__ {scalar_t__ z_nr_znodes; int /*<<< orphan*/ * z_os; int /*<<< orphan*/  z_teardown_lock; int /*<<< orphan*/  z_teardown_inactive_lock; void* z_unmounted; int /*<<< orphan*/  z_znodes_lock; int /*<<< orphan*/  z_all_znodes; int /*<<< orphan*/ * z_log; TYPE_1__* z_parent; } ;
typedef  TYPE_3__ zfsvfs_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  void* boolean_t ;
struct TYPE_13__ {int /*<<< orphan*/  z_sb; } ;

/* Variables and functions */
 void* B_FALSE ; 
 void* B_TRUE ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  RW_WRITER ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int TXG_SIZE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC23(zfsvfs_t *zfsvfs, boolean_t unmounting)
{
	znode_t	*zp;

	FUNC19(zfsvfs);

	/*
	 * If someone has not already unmounted this file system,
	 * drain the iput_taskq to ensure all active references to the
	 * zfsvfs_t have been handled only then can it be safely destroyed.
	 */
	if (zfsvfs->z_os) {
		/*
		 * If we're unmounting we have to wait for the list to
		 * drain completely.
		 *
		 * If we're not unmounting there's no guarantee the list
		 * will drain completely, but iputs run from the taskq
		 * may add the parents of dir-based xattrs to the taskq
		 * so we want to wait for these.
		 *
		 * We can safely read z_nr_znodes without locking because the
		 * VFS has already blocked operations which add to the
		 * z_all_znodes list and thus increment z_nr_znodes.
		 */
		int round = 0;
		while (zfsvfs->z_nr_znodes > 0) {
			FUNC16(FUNC5(
			    FUNC4(zfsvfs->z_os)), 0);
			if (++round > 1 && !unmounting)
				break;
		}
	}

	FUNC11(&zfsvfs->z_teardown_lock, RW_WRITER, FTAG);

	if (!unmounting) {
		/*
		 * We purge the parent filesystem's super block as the
		 * parent filesystem and all of its snapshots have their
		 * inode's super block set to the parent's filesystem's
		 * super block.  Note,  'z_parent' is self referential
		 * for non-snapshots.
		 */
		FUNC15(zfsvfs->z_parent->z_sb);
	}

	/*
	 * Close the zil. NB: Can't close the zil while zfs_inactive
	 * threads are blocked as zil_close can call zfs_inactive.
	 */
	if (zfsvfs->z_log) {
		FUNC22(zfsvfs->z_log);
		zfsvfs->z_log = NULL;
	}

	FUNC13(&zfsvfs->z_teardown_inactive_lock, RW_WRITER);

	/*
	 * If we are not unmounting (ie: online recv) and someone already
	 * unmounted this file system while we were doing the switcheroo,
	 * or a reopen of z_os failed then just bail out now.
	 */
	if (!unmounting && (zfsvfs->z_unmounted || zfsvfs->z_os == NULL)) {
		FUNC14(&zfsvfs->z_teardown_inactive_lock);
		FUNC12(&zfsvfs->z_teardown_lock, FTAG);
		return (FUNC0(EIO));
	}

	/*
	 * At this point there are no VFS ops active, and any new VFS ops
	 * will fail with EIO since we have z_teardown_lock for writer (only
	 * relevant for forced unmount).
	 *
	 * Release all holds on dbufs. We also grab an extra reference to all
	 * the remaining inodes so that the kernel does not attempt to free
	 * any inodes of a suspended fs. This can cause deadlocks since the
	 * zfs_resume_fs() process may involve starting threads, which might
	 * attempt to free unreferenced inodes to free up memory for the new
	 * thread.
	 */
	if (!unmounting) {
		FUNC9(&zfsvfs->z_znodes_lock);
		for (zp = FUNC7(&zfsvfs->z_all_znodes); zp != NULL;
		    zp = FUNC8(&zfsvfs->z_all_znodes, zp)) {
			if (zp->z_sa_hdl)
				FUNC21(zp);
			if (FUNC6(FUNC1(zp)) != NULL)
				zp->z_suspended = B_TRUE;

		}
		FUNC10(&zfsvfs->z_znodes_lock);
	}

	/*
	 * If we are unmounting, set the unmounted flag and let new VFS ops
	 * unblock.  zfs_inactive will have the unmounted behavior, and all
	 * other VFS ops will fail with EIO.
	 */
	if (unmounting) {
		zfsvfs->z_unmounted = B_TRUE;
		FUNC14(&zfsvfs->z_teardown_inactive_lock);
		FUNC12(&zfsvfs->z_teardown_lock, FTAG);
	}

	/*
	 * z_os will be NULL if there was an error in attempting to reopen
	 * zfsvfs, so just return as the properties had already been
	 *
	 * unregistered and cached data had been evicted before.
	 */
	if (zfsvfs->z_os == NULL)
		return (0);

	/*
	 * Unregister properties.
	 */
	FUNC20(zfsvfs);

	/*
	 * Evict cached data. We must write out any dirty data before
	 * disowning the dataset.
	 */
	objset_t *os = zfsvfs->z_os;
	boolean_t os_dirty = B_FALSE;
	for (int t = 0; t < TXG_SIZE; t++) {
		if (FUNC3(os, t)) {
			os_dirty = B_TRUE;
			break;
		}
	}
	if (!FUNC18(zfsvfs) && os_dirty) {
		FUNC17(FUNC4(zfsvfs->z_os), 0);
	}
	FUNC2(zfsvfs->z_os);

	return (0);
}