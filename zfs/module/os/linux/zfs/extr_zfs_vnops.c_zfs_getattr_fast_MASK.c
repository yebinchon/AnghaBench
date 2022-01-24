#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ z_id; scalar_t__ z_blksz; int /*<<< orphan*/  z_lock; int /*<<< orphan*/  z_sa_hdl; } ;
typedef  TYPE_3__ znode_t ;
struct TYPE_14__ {scalar_t__ z_root; int /*<<< orphan*/  z_os; scalar_t__ z_issnap; int /*<<< orphan*/  z_max_blksz; } ;
typedef  TYPE_4__ zfsvfs_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  u_longlong_t ;
struct kstat {scalar_t__ nlink; scalar_t__ ino; int /*<<< orphan*/  blksize; int /*<<< orphan*/  blocks; } ;
struct inode {TYPE_2__* i_sb; } ;
struct TYPE_12__ {TYPE_1__* s_root; } ;
struct TYPE_11__ {struct inode* d_inode; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (struct inode*) ; 
 TYPE_4__* FUNC1 (struct inode*) ; 
 scalar_t__ ZFSCTL_INO_SNAPDIRS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 scalar_t__ ZFS_LINK_MAX ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,struct kstat*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int) ; 
 scalar_t__ FUNC11 (TYPE_3__*) ; 

int
FUNC12(struct inode *ip, struct kstat *sp)
{
	znode_t *zp = FUNC0(ip);
	zfsvfs_t *zfsvfs = FUNC1(ip);
	uint32_t blksize;
	u_longlong_t nblocks;

	FUNC2(zfsvfs);
	FUNC4(zp);

	FUNC7(&zp->z_lock);

	FUNC6(ip, sp);
	/*
	 * +1 link count for root inode with visible '.zfs' directory.
	 */
	if ((zp->z_id == zfsvfs->z_root) && FUNC11(zp))
		if (sp->nlink < ZFS_LINK_MAX)
			sp->nlink++;

	FUNC9(zp->z_sa_hdl, &blksize, &nblocks);
	sp->blksize = blksize;
	sp->blocks = nblocks;

	if (FUNC10(zp->z_blksz == 0)) {
		/*
		 * Block size hasn't been set; suggest maximal I/O transfers.
		 */
		sp->blksize = zfsvfs->z_max_blksz;
	}

	FUNC8(&zp->z_lock);

	/*
	 * Required to prevent NFS client from detecting different inode
	 * numbers of snapshot root dentry before and after snapshot mount.
	 */
	if (zfsvfs->z_issnap) {
		if (ip->i_sb->s_root->d_inode == ip)
			sp->ino = ZFSCTL_INO_SNAPDIRS -
			    FUNC5(zfsvfs->z_os);
	}

	FUNC3(zfsvfs);

	return (0);
}