#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_5__* z_os; struct TYPE_11__* z_parent; TYPE_1__* z_vfs; } ;
typedef  TYPE_3__ zfsvfs_t ;
typedef  int /*<<< orphan*/  zfs_snapentry_t ;
struct path {TYPE_2__* mnt; struct dentry* dentry; } ;
struct inode {int dummy; } ;
struct dentry {struct inode* d_inode; } ;
struct TYPE_12__ {int /*<<< orphan*/  os_spa; } ;
struct TYPE_10__ {int /*<<< orphan*/  mnt_flags; } ;
struct TYPE_9__ {char* vfs_mntpoint; } ;

/* Variables and functions */
 int /*<<< orphan*/  EISDIR ; 
 TYPE_3__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  MAXPATHLEN ; 
 int /*<<< orphan*/  MNT_SHRINKABLE ; 
 int MOUNT_BUSY ; 
 int /*<<< orphan*/  RW_WRITER ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UMH_WAIT_PROC ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  ZFS_MAX_DATASET_NAME_LEN ; 
 int FUNC4 (char*,char**,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 char* FUNC6 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,char*) ; 
 scalar_t__ FUNC8 (struct path*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct path*) ; 
 int /*<<< orphan*/  FUNC12 (struct path*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*,int) ; 
 int /*<<< orphan*/  zfs_expire_snapshot ; 
 int /*<<< orphan*/  zfs_snapshot_lock ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC18 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dentry*) ; 
 scalar_t__ FUNC19 (char*) ; 
 int FUNC20 (TYPE_3__*,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC22(struct path *path, int flags)
{
	struct dentry *dentry = path->dentry;
	struct inode *ip = dentry->d_inode;
	zfsvfs_t *zfsvfs;
	zfsvfs_t *snap_zfsvfs;
	zfs_snapentry_t *se;
	char *full_name, *full_path;
	char *argv[] = { "/usr/bin/env", "mount", "-t", "zfs", "-n", NULL, NULL,
	    NULL };
	char *envp[] = { NULL };
	int error;
	struct path spath;

	if (ip == NULL)
		return (FUNC1(EISDIR));

	zfsvfs = FUNC0(ip);
	FUNC2(zfsvfs);

	full_name = FUNC10(ZFS_MAX_DATASET_NAME_LEN, KM_SLEEP);
	full_path = FUNC10(MAXPATHLEN, KM_SLEEP);

	error = FUNC20(zfsvfs, FUNC6(dentry),
	    ZFS_MAX_DATASET_NAME_LEN, full_name);
	if (error)
		goto error;

	/*
	 * Construct a mount point path from sb of the ctldir inode and dirent
	 * name, instead of from d_path(), so that chroot'd process doesn't fail
	 * on mount.zfs(8).
	 */
	FUNC15(full_path, MAXPATHLEN, "%s/.zfs/snapshot/%s",
	    zfsvfs->z_vfs->vfs_mntpoint ? zfsvfs->z_vfs->vfs_mntpoint : "",
	    FUNC6(dentry));

	/*
	 * Multiple concurrent automounts of a snapshot are never allowed.
	 * The snapshot may be manually mounted as many times as desired.
	 */
	if (FUNC19(full_name)) {
		error = 0;
		goto error;
	}

	/*
	 * Attempt to mount the snapshot from user space.  Normally this
	 * would be done using the vfs_kern_mount() function, however that
	 * function is marked GPL-only and cannot be used.  On error we
	 * careful to log the real error to the console and return EISDIR
	 * to safely abort the automount.  This should be very rare.
	 *
	 * If the user mode helper happens to return EBUSY, a concurrent
	 * mount is already in progress in which case the error is ignored.
	 * Take note that if the program was executed successfully the return
	 * value from call_usermodehelper() will be (exitcode << 8 + signal).
	 */
	FUNC7("mount; name=%s path=%s\n", full_name, full_path);
	argv[5] = full_name;
	argv[6] = full_path;
	error = FUNC4(argv[0], argv, envp, UMH_WAIT_PROC);
	if (error) {
		if (!(error & MOUNT_BUSY << 8)) {
			FUNC16("Unable to automount %s error=%d",
			    full_path, error);
			error = FUNC1(EISDIR);
		} else {
			/*
			 * EBUSY, this could mean a concurrent mount, or the
			 * snapshot has already been mounted at completely
			 * different place. We return 0 so VFS will retry. For
			 * the latter case the VFS will retry several times
			 * and return ELOOP, which is probably not a very good
			 * behavior.
			 */
			error = 0;
		}
		goto error;
	}

	/*
	 * Follow down in to the mounted snapshot and set MNT_SHRINKABLE
	 * to identify this as an automounted filesystem.
	 */
	spath = *path;
	FUNC11(&spath);
	if (FUNC8(&spath)) {
		snap_zfsvfs = FUNC0(spath.dentry->d_inode);
		snap_zfsvfs->z_parent = zfsvfs;
		dentry = spath.dentry;
		spath.mnt->mnt_flags |= MNT_SHRINKABLE;

		FUNC13(&zfs_snapshot_lock, RW_WRITER);
		se = FUNC18(full_name, full_path,
		    snap_zfsvfs->z_os->os_spa, FUNC5(snap_zfsvfs->z_os),
		    dentry);
		FUNC17(se);
		FUNC21(se, zfs_expire_snapshot);
		FUNC14(&zfs_snapshot_lock);
	}
	FUNC12(&spath);
error:
	FUNC9(full_name, ZFS_MAX_DATASET_NAME_LEN);
	FUNC9(full_path, MAXPATHLEN);

	FUNC3(zfsvfs);

	return (error);
}