#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_11__ ;

/* Type definitions */
struct TYPE_18__ {int z_pflags; int z_size; int /*<<< orphan*/  z_lock; int /*<<< orphan*/  z_sa_hdl; void* z_unlinked; int /*<<< orphan*/  z_id; } ;
typedef  TYPE_1__ znode_t ;
typedef  int /*<<< orphan*/  zfsvfs_t ;
struct TYPE_19__ {TYPE_1__* dl_dzp; } ;
typedef  TYPE_2__ zfs_dirlock_t ;
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  sa_bulk_attr_t ;
typedef  int /*<<< orphan*/  mtime ;
typedef  int /*<<< orphan*/  links ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
typedef  int /*<<< orphan*/  ctime ;
typedef  void* boolean_t ;
struct TYPE_17__ {int i_nlink; int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* B_FALSE ; 
 void* B_TRUE ; 
 int /*<<< orphan*/  CONTENT_MODIFIED ; 
 int /*<<< orphan*/  ENOTEMPTY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATE_CHANGED ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int ZRENAMING ; 
 TYPE_11__* FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_11__*,int) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 
 int FUNC18 (TYPE_2__*,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC19 (char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*,int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*,int /*<<< orphan*/ *) ; 

int
FUNC22(zfs_dirlock_t *dl, znode_t *zp, dmu_tx_t *tx, int flag,
    boolean_t *unlinkedp)
{
	znode_t *dzp = dl->dl_dzp;
	zfsvfs_t *zfsvfs = FUNC10(dzp);
	int zp_is_dir = FUNC8(FUNC9(zp)->i_mode);
	boolean_t unlinked = B_FALSE;
	sa_bulk_attr_t bulk[5];
	uint64_t mtime[2], ctime[2];
	uint64_t links;
	int count = 0;
	int error;

	if (!(flag & ZRENAMING)) {
		FUNC13(&zp->z_lock);

		if (zp_is_dir && !FUNC17(zp)) {
			FUNC14(&zp->z_lock);
			return (FUNC7(ENOTEMPTY));
		}

		/*
		 * If we get here, we are going to try to remove the object.
		 * First try removing the name from the directory; if that
		 * fails, return the error.
		 */
		error = FUNC18(dl, zp, dzp, tx, flag);
		if (error != 0) {
			FUNC14(&zp->z_lock);
			return (error);
		}

		if (FUNC9(zp)->i_nlink <= zp_is_dir) {
			FUNC19("zfs: link count on %lu is %u, "
			    "should be at least %u", zp->z_id,
			    (int)FUNC9(zp)->i_nlink, zp_is_dir + 1);
			FUNC16(FUNC9(zp), zp_is_dir + 1);
		}
		FUNC12(FUNC9(zp));
		if (FUNC9(zp)->i_nlink == zp_is_dir) {
			zp->z_unlinked = B_TRUE;
			FUNC11(FUNC9(zp));
			unlinked = B_TRUE;
		} else {
			FUNC1(bulk, count, FUNC2(zfsvfs),
			    NULL, &ctime, sizeof (ctime));
			FUNC1(bulk, count, FUNC3(zfsvfs),
			    NULL, &zp->z_pflags, sizeof (zp->z_pflags));
			FUNC20(zp, STATE_CHANGED, mtime,
			    ctime);
		}
		links = FUNC9(zp)->i_nlink;
		FUNC1(bulk, count, FUNC4(zfsvfs),
		    NULL, &links, sizeof (links));
		error = FUNC15(zp->z_sa_hdl, bulk, count, tx);
		count = 0;
		FUNC0(error == 0);
		FUNC14(&zp->z_lock);
	} else {
		error = FUNC18(dl, zp, dzp, tx, flag);
		if (error != 0)
			return (error);
	}

	FUNC13(&dzp->z_lock);
	dzp->z_size--;		/* one dirent removed */
	if (zp_is_dir)
		FUNC12(FUNC9(dzp));	/* ".." link from zp */
	links = FUNC9(dzp)->i_nlink;
	FUNC1(bulk, count, FUNC4(zfsvfs),
	    NULL, &links, sizeof (links));
	FUNC1(bulk, count, FUNC6(zfsvfs),
	    NULL, &dzp->z_size, sizeof (dzp->z_size));
	FUNC1(bulk, count, FUNC2(zfsvfs),
	    NULL, ctime, sizeof (ctime));
	FUNC1(bulk, count, FUNC5(zfsvfs),
	    NULL, mtime, sizeof (mtime));
	FUNC1(bulk, count, FUNC3(zfsvfs),
	    NULL, &dzp->z_pflags, sizeof (dzp->z_pflags));
	FUNC20(dzp, CONTENT_MODIFIED, mtime, ctime);
	error = FUNC15(dzp->z_sa_hdl, bulk, count, tx);
	FUNC0(error == 0);
	FUNC14(&dzp->z_lock);

	if (unlinkedp != NULL)
		*unlinkedp = unlinked;
	else if (unlinked)
		FUNC21(zp, tx);

	return (0);
}