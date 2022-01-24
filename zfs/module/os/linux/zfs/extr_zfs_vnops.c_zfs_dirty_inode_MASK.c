#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  z_lock; int /*<<< orphan*/  z_sa_hdl; int /*<<< orphan*/ ******** z_mode; int /*<<< orphan*/  z_atime_dirty; } ;
typedef  TYPE_1__ znode_t ;
struct TYPE_15__ {int /*<<< orphan*/  z_os; } ;
typedef  TYPE_2__ zfsvfs_t ;
typedef  int /*<<< orphan*/ **** uint64_t ;
struct inode {int /*<<< orphan*/ ******** i_mode; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_atime; } ;
typedef  int /*<<< orphan*/  sa_bulk_attr_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 TYPE_2__* FUNC1 (struct inode*) ; 
 int I_DIRTY_TIME ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ******,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  TXG_WAIT ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *****) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,TYPE_1__*) ; 

int
FUNC22(struct inode *ip, int flags)
{
	znode_t		*zp = FUNC0(ip);
	zfsvfs_t	*zfsvfs = FUNC1(ip);
	dmu_tx_t	*tx;
	uint64_t	mode, atime[2], mtime[2], ctime[2];
	sa_bulk_attr_t	bulk[4];
	int		error = 0;
	int		cnt = 0;

	if (FUNC20(zfsvfs) || FUNC11(zfsvfs->z_os))
		return (0);

	FUNC7(zfsvfs);
	FUNC10(zp);

#ifdef I_DIRTY_TIME
	/*
	 * This is the lazytime semantic introduced in Linux 4.0
	 * This flag will only be called from update_time when lazytime is set.
	 * (Note, I_DIRTY_SYNC will also set if not lazytime)
	 * Fortunately mtime and ctime are managed within ZFS itself, so we
	 * only need to dirty atime.
	 */
	if (flags == I_DIRTY_TIME) {
		zp->z_atime_dirty = B_TRUE;
		goto out;
	}
#endif

	tx = FUNC15(zfsvfs->z_os);

	FUNC16(tx, zp->z_sa_hdl, B_FALSE);
	FUNC21(tx, zp);

	error = FUNC13(tx, TXG_WAIT);
	if (error) {
		FUNC12(tx);
		goto out;
	}

	FUNC17(&zp->z_lock);
	zp->z_atime_dirty = B_FALSE;

	FUNC2(bulk, cnt, FUNC5(zfsvfs), NULL, &mode, 8);
	FUNC2(bulk, cnt, FUNC3(zfsvfs), NULL, &atime, 16);
	FUNC2(bulk, cnt, FUNC6(zfsvfs), NULL, &mtime, 16);
	FUNC2(bulk, cnt, FUNC4(zfsvfs), NULL, &ctime, 16);

	/* Preserve the mode, mtime and ctime provided by the inode */
	FUNC9(&ip->i_atime, atime);
	FUNC9(&ip->i_mtime, mtime);
	FUNC9(&ip->i_ctime, ctime);
	mode = ip->i_mode;

	zp->z_mode = mode;

	error = FUNC19(zp->z_sa_hdl, bulk, cnt, tx);
	FUNC18(&zp->z_lock);

	FUNC14(tx);
out:
	FUNC8(zfsvfs);
	return (error);
}