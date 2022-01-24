#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int z_pflags; scalar_t__ z_projid; } ;
typedef  TYPE_3__ znode_t ;
struct TYPE_13__ {int /*<<< orphan*/  z_os; int /*<<< orphan*/  z_max_blksz; } ;
typedef  TYPE_4__ zfsvfs_t ;
typedef  int uint64_t ;
typedef  int uint32_t ;
struct TYPE_11__ {int* val; } ;
struct kstatfs {int f_blocks; int f_bfree; int f_bavail; int f_ffree; int f_files; int /*<<< orphan*/  f_spare; scalar_t__ f_namelen; int /*<<< orphan*/  f_type; TYPE_2__ f_fsid; int /*<<< orphan*/  f_bsize; int /*<<< orphan*/  f_frsize; } ;
struct dentry {int /*<<< orphan*/  d_inode; TYPE_1__* d_sb; } ;
struct TYPE_10__ {TYPE_4__* s_fs_info; } ;

/* Variables and functions */
 int DNODE_SHIFT ; 
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ MAXNAMELEN ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int ZFS_PROJINHERIT ; 
 int /*<<< orphan*/  ZFS_SUPER_MAGIC ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int*,int*,int*,int*) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_4__*,TYPE_3__*,struct kstatfs*,int) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 

int
FUNC13(struct dentry *dentry, struct kstatfs *statp)
{
	zfsvfs_t *zfsvfs = dentry->d_sb->s_fs_info;
	uint64_t refdbytes, availbytes, usedobjs, availobjs;
	int err = 0;

	FUNC3(zfsvfs);

	FUNC9(zfsvfs->z_os,
	    &refdbytes, &availbytes, &usedobjs, &availobjs);

	uint64_t fsid = FUNC6(zfsvfs->z_os);
	/*
	 * The underlying storage pool actually uses multiple block
	 * size.  Under Solaris frsize (fragment size) is reported as
	 * the smallest block size we support, and bsize (block size)
	 * as the filesystem's maximum block size.  Unfortunately,
	 * under Linux the fragment size and block size are often used
	 * interchangeably.  Thus we are forced to report both of them
	 * as the filesystem's maximum block size.
	 */
	statp->f_frsize = zfsvfs->z_max_blksz;
	statp->f_bsize = zfsvfs->z_max_blksz;
	uint32_t bshift = FUNC10(statp->f_bsize) - 1;

	/*
	 * The following report "total" blocks of various kinds in
	 * the file system, but reported in terms of f_bsize - the
	 * "preferred" size.
	 */

	/* Round up so we never have a filesystem using 0 blocks. */
	refdbytes = FUNC2(refdbytes, statp->f_bsize);
	statp->f_blocks = (refdbytes + availbytes) >> bshift;
	statp->f_bfree = availbytes >> bshift;
	statp->f_bavail = statp->f_bfree; /* no root reservation */

	/*
	 * statvfs() should really be called statufs(), because it assumes
	 * static metadata.  ZFS doesn't preallocate files, so the best
	 * we can do is report the max that could possibly fit in f_files,
	 * and that minus the number actually used in f_ffree.
	 * For f_ffree, report the smaller of the number of objects available
	 * and the number of blocks (each object will take at least a block).
	 */
	statp->f_ffree = FUNC1(availobjs, availbytes >> DNODE_SHIFT);
	statp->f_files = statp->f_ffree + usedobjs;
	statp->f_fsid.val[0] = (uint32_t)fsid;
	statp->f_fsid.val[1] = (uint32_t)(fsid >> 32);
	statp->f_type = ZFS_SUPER_MAGIC;
	statp->f_namelen = MAXNAMELEN - 1;

	/*
	 * We have all of 40 characters to stuff a string here.
	 * Is there anything useful we could/should provide?
	 */
	FUNC5(statp->f_spare, sizeof (statp->f_spare));

	if (FUNC7(zfsvfs->z_os) &&
	    FUNC8(zfsvfs->z_os)) {
		znode_t *zp = FUNC0(dentry->d_inode);

		if (zp->z_pflags & ZFS_PROJINHERIT && zp->z_projid &&
		    FUNC12(zp->z_projid))
			err = FUNC11(zfsvfs, zp, statp, bshift);
	}

	FUNC4(zfsvfs);
	return (err);
}