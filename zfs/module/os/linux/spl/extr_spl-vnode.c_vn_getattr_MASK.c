#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  mnt; } ;
struct file {int /*<<< orphan*/  va_nblocks; int /*<<< orphan*/  va_rdev; int /*<<< orphan*/  va_ctime; int /*<<< orphan*/  va_mtime; int /*<<< orphan*/  va_atime; int /*<<< orphan*/  va_blksize; int /*<<< orphan*/  va_size; int /*<<< orphan*/  va_nlink; int /*<<< orphan*/  va_nodeid; scalar_t__ va_fsid; int /*<<< orphan*/  va_gid; int /*<<< orphan*/  va_uid; int /*<<< orphan*/  va_mode; int /*<<< orphan*/  va_type; int /*<<< orphan*/  f_dentry; TYPE_1__ f_path; struct file* v_file; } ;
typedef  struct file vnode_t ;
typedef  struct file vattr_t ;
struct kstat {int /*<<< orphan*/  blocks; int /*<<< orphan*/  rdev; int /*<<< orphan*/  ctime; int /*<<< orphan*/  mtime; int /*<<< orphan*/  atime; int /*<<< orphan*/  blksize; int /*<<< orphan*/  size; int /*<<< orphan*/  nlink; int /*<<< orphan*/  ino; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct file*) ; 
 int /*<<< orphan*/  AT_STATX_SYNC_AS_STAT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATX_BASIC_STATS ; 
 int FUNC3 (TYPE_1__*,struct kstat*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int
FUNC5(vnode_t *vp, vattr_t *vap, int flags, void *x3, void *x4)
{
	struct file *fp;
	struct kstat stat;
	int rc;

	FUNC0(vp);
	FUNC0(vp->v_file);
	FUNC0(vap);

	fp = vp->v_file;

#if defined(HAVE_4ARGS_VFS_GETATTR)
	rc = vfs_getattr(&fp->f_path, &stat, STATX_BASIC_STATS,
	    AT_STATX_SYNC_AS_STAT);
#elif defined(HAVE_2ARGS_VFS_GETATTR)
	rc = vfs_getattr(&fp->f_path, &stat);
#else
	rc = FUNC3(fp->f_path.mnt, fp->f_dentry, &stat);
#endif
	if (rc)
		return (-rc);

	vap->va_type	= FUNC4(stat.mode);
	vap->va_mode	= stat.mode;
	vap->va_uid	= FUNC2(stat.uid);
	vap->va_gid	= FUNC1(stat.gid);
	vap->va_fsid	= 0;
	vap->va_nodeid	= stat.ino;
	vap->va_nlink	= stat.nlink;
	vap->va_size	= stat.size;
	vap->va_blksize	= stat.blksize;
	vap->va_atime	= stat.atime;
	vap->va_mtime	= stat.mtime;
	vap->va_ctime	= stat.ctime;
	vap->va_rdev	= stat.rdev;
	vap->va_nblocks	= stat.blocks;

	return (0);
}