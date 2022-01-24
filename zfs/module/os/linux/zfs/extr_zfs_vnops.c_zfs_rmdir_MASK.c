#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_11__ ;

/* Type definitions */
struct TYPE_19__ {int /*<<< orphan*/  z_name_lock; int /*<<< orphan*/  z_parent_lock; int /*<<< orphan*/  z_sa_hdl; int /*<<< orphan*/  z_id; } ;
typedef  TYPE_1__ znode_t ;
typedef  int /*<<< orphan*/  zilog_t ;
struct TYPE_20__ {TYPE_11__* z_os; int /*<<< orphan*/  z_unlinkedobj; int /*<<< orphan*/ * z_log; } ;
typedef  TYPE_2__ zfsvfs_t ;
typedef  int /*<<< orphan*/  zfs_dirlock_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct inode {int /*<<< orphan*/  i_mode; } ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
typedef  int /*<<< orphan*/  cred_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_18__ {scalar_t__ os_sync; } ;

/* Variables and functions */
 scalar_t__ B_FALSE ; 
 scalar_t__ B_TRUE ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOTDIR ; 
 int ERESTART ; 
 int /*<<< orphan*/  FALSE ; 
 int FIGNORECASE ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 TYPE_2__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  RW_WRITER ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int TXG_NOTHROTTLE ; 
 int TXG_NOWAIT ; 
 int /*<<< orphan*/  TX_CI ; 
 int /*<<< orphan*/  TX_RMDIR ; 
 int ZCILOOK ; 
 int ZEXISTS ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  ZFS_NO_OBJECT ; 
 scalar_t__ ZFS_SYNC_ALWAYS ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 struct inode* FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int FUNC19 (int /*<<< orphan*/ **,TYPE_1__*,char*,TYPE_1__**,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*) ; 
 int FUNC22 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC25 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC27(struct inode *dip, char *name, struct inode *cwd, cred_t *cr,
    int flags)
{
	znode_t		*dzp = FUNC0(dip);
	znode_t		*zp;
	struct inode	*ip;
	zfsvfs_t	*zfsvfs = FUNC1(dip);
	zilog_t		*zilog;
	zfs_dirlock_t	*dl;
	dmu_tx_t	*tx;
	int		error;
	int		zflg = ZEXISTS;
	boolean_t	waited = B_FALSE;

	if (name == NULL)
		return (FUNC2(EINVAL));

	FUNC4(zfsvfs);
	FUNC6(dzp);
	zilog = zfsvfs->z_log;

	if (flags & FIGNORECASE)
		zflg |= ZCILOOK;
top:
	zp = NULL;

	/*
	 * Attempt to lock directory; fail if entry doesn't exist.
	 */
	if ((error = FUNC19(&dl, dzp, name, &zp, zflg,
	    NULL, NULL))) {
		FUNC5(zfsvfs);
		return (error);
	}

	ip = FUNC7(zp);

	if ((error = FUNC25(dzp, zp, cr))) {
		goto out;
	}

	if (!FUNC3(ip->i_mode)) {
		error = FUNC2(ENOTDIR);
		goto out;
	}

	if (ip == cwd) {
		error = FUNC2(EINVAL);
		goto out;
	}

	/*
	 * Grab a lock on the directory to make sure that no one is
	 * trying to add (or lookup) entries while we are removing it.
	 */
	FUNC17(&zp->z_name_lock, RW_WRITER);

	/*
	 * Grab a lock on the parent pointer to make sure we play well
	 * with the treewalk and directory rename code.
	 */
	FUNC17(&zp->z_parent_lock, RW_WRITER);

	tx = FUNC11(zfsvfs->z_os);
	FUNC13(tx, dzp->z_id, FALSE, name);
	FUNC12(tx, zp->z_sa_hdl, B_FALSE);
	FUNC13(tx, zfsvfs->z_unlinkedobj, FALSE, NULL);
	FUNC24(tx, zp);
	FUNC24(tx, dzp);
	FUNC14(tx);
	error = FUNC9(tx, (waited ? TXG_NOTHROTTLE : 0) | TXG_NOWAIT);
	if (error) {
		FUNC18(&zp->z_parent_lock);
		FUNC18(&zp->z_name_lock);
		FUNC20(dl);
		if (error == ERESTART) {
			waited = B_TRUE;
			FUNC15(tx);
			FUNC8(tx);
			FUNC16(ip);
			goto top;
		}
		FUNC8(tx);
		FUNC16(ip);
		FUNC5(zfsvfs);
		return (error);
	}

	error = FUNC22(dl, zp, tx, zflg, NULL);

	if (error == 0) {
		uint64_t txtype = TX_RMDIR;
		if (flags & FIGNORECASE)
			txtype |= TX_CI;
		FUNC23(zilog, tx, txtype, dzp, name, ZFS_NO_OBJECT,
		    B_FALSE);
	}

	FUNC10(tx);

	FUNC18(&zp->z_parent_lock);
	FUNC18(&zp->z_name_lock);
out:
	FUNC20(dl);

	FUNC21(dzp);
	FUNC21(zp);
	FUNC16(ip);

	if (zfsvfs->z_os->os_sync == ZFS_SYNC_ALWAYS)
		FUNC26(zilog, 0);

	FUNC5(zfsvfs);
	return (error);
}