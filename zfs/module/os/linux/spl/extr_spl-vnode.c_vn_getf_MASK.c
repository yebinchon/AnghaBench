#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  v_lock; struct file* v_file; int /*<<< orphan*/  v_type; } ;
typedef  TYPE_1__ vnode_t ;
struct kstat {int /*<<< orphan*/  mode; } ;
struct TYPE_12__ {int /*<<< orphan*/  mnt; } ;
struct file {int /*<<< orphan*/  f_dentry; TYPE_6__ f_path; } ;
struct TYPE_11__ {int f_fd; int /*<<< orphan*/  f_lock; int /*<<< orphan*/  f_list; struct file* f_file; TYPE_1__* f_vnode; int /*<<< orphan*/  f_ref; scalar_t__ f_offset; int /*<<< orphan*/  f_task; } ;
typedef  TYPE_2__ file_t ;

/* Variables and functions */
 int /*<<< orphan*/  AT_STATX_SYNC_AS_STAT ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  STATX_TYPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 struct file* FUNC1 (int) ; 
 TYPE_2__* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct file*) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (TYPE_6__*,struct kstat*,...) ; 
 TYPE_1__* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vn_file_cache ; 
 int /*<<< orphan*/  vn_file_list ; 
 int /*<<< orphan*/  vn_file_lock ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

file_t *
FUNC15(int fd)
{
	struct kstat stat;
	struct file *lfp;
	file_t *fp;
	vnode_t *vp;
	int rc = 0;

	if (fd < 0)
		return (NULL);

	/* Already open just take an extra reference */
	FUNC9(&vn_file_lock);

	fp = FUNC2(fd, current);
	if (fp) {
		lfp = FUNC1(fd);
		FUNC3(fp->f_file);
		/*
		 * areleasef() can cause us to see a stale reference when
		 * userspace has reused a file descriptor before areleasef()
		 * has run. fput() the stale reference and replace it. We
		 * retain the original reference count such that the concurrent
		 * areleasef() will decrement its reference and terminate.
		 */
		if (lfp != fp->f_file) {
			fp->f_file = lfp;
			fp->f_vnode->v_file = lfp;
		}
		FUNC0(&fp->f_ref);
		FUNC10(&vn_file_lock);
		return (fp);
	}

	FUNC10(&vn_file_lock);

	/* File was not yet opened create the object and setup */
	fp = FUNC4(vn_file_cache, KM_SLEEP);
	if (fp == NULL)
		goto out;

	FUNC7(&fp->f_lock);

	fp->f_fd = fd;
	fp->f_task = current;
	fp->f_offset = 0;
	FUNC0(&fp->f_ref);

	lfp = FUNC1(fd);
	if (lfp == NULL)
		goto out_mutex;

	vp = FUNC12(KM_SLEEP);
	if (vp == NULL)
		goto out_fget;

#if defined(HAVE_4ARGS_VFS_GETATTR)
	rc = vfs_getattr(&lfp->f_path, &stat, STATX_TYPE,
	    AT_STATX_SYNC_AS_STAT);
#elif defined(HAVE_2ARGS_VFS_GETATTR)
	rc = vfs_getattr(&lfp->f_path, &stat);
#else
	rc = FUNC11(lfp->f_path.mnt, lfp->f_dentry, &stat);
#endif
	if (rc)
		goto out_vnode;

	FUNC7(&vp->v_lock);
	vp->v_type = FUNC14(stat.mode);
	vp->v_file = lfp;
	FUNC8(&vp->v_lock);

	fp->f_vnode = vp;
	fp->f_file = lfp;

	/* Put it on the tracking list */
	FUNC9(&vn_file_lock);
	FUNC6(&fp->f_list, &vn_file_list);
	FUNC10(&vn_file_lock);

	FUNC8(&fp->f_lock);
	return (fp);

out_vnode:
	FUNC13(vp);
out_fget:
	FUNC3(lfp);
out_mutex:
	FUNC8(&fp->f_lock);
	FUNC5(vn_file_cache, fp);
out:
	return (NULL);
}