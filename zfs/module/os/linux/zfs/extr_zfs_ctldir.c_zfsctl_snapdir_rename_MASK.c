#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ z_case; int /*<<< orphan*/  z_os; } ;
typedef  TYPE_1__ zfsvfs_t ;
struct inode {int dummy; } ;
typedef  int /*<<< orphan*/  cred_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  EACCES ; 
 int /*<<< orphan*/  EINVAL ; 
 int ENOTSUP ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  RW_WRITER ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ ZFS_CASE_INSENSITIVE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  ZFS_MAX_DATASET_NAME_LEN ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (char*,char*,char*,int /*<<< orphan*/ ) ; 
 char* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  zfs_admin_snapshot ; 
 int FUNC12 (char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zfs_snapshot_lock ; 
 int FUNC13 (TYPE_1__*,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*) ; 

int
FUNC15(struct inode *sdip, char *snm,
    struct inode *tdip, char *tnm, cred_t *cr, int flags)
{
	zfsvfs_t *zfsvfs = FUNC0(sdip);
	char *to, *from, *real, *fsname;
	int error;

	if (!zfs_admin_snapshot)
		return (FUNC1(EACCES));

	FUNC2(zfsvfs);

	to = FUNC7(ZFS_MAX_DATASET_NAME_LEN, KM_SLEEP);
	from = FUNC7(ZFS_MAX_DATASET_NAME_LEN, KM_SLEEP);
	real = FUNC7(ZFS_MAX_DATASET_NAME_LEN, KM_SLEEP);
	fsname = FUNC7(ZFS_MAX_DATASET_NAME_LEN, KM_SLEEP);

	if (zfsvfs->z_case == ZFS_CASE_INSENSITIVE) {
		error = FUNC5(zfsvfs->z_os, snm, real,
		    ZFS_MAX_DATASET_NAME_LEN, NULL);
		if (error == 0) {
			snm = real;
		} else if (error != ENOTSUP) {
			goto out;
		}
	}

	FUNC4(zfsvfs->z_os, fsname);

	error = FUNC13(FUNC0(sdip), snm,
	    ZFS_MAX_DATASET_NAME_LEN, from);
	if (error == 0)
		error = FUNC13(FUNC0(tdip), tnm,
		    ZFS_MAX_DATASET_NAME_LEN, to);
	if (error == 0)
		error = FUNC12(from, to, cr);
	if (error != 0)
		goto out;

	/*
	 * Cannot move snapshots out of the snapdir.
	 */
	if (sdip != tdip) {
		error = FUNC1(EINVAL);
		goto out;
	}

	/*
	 * No-op when names are identical.
	 */
	if (FUNC11(snm, tnm) == 0) {
		error = 0;
		goto out;
	}

	FUNC9(&zfs_snapshot_lock, RW_WRITER);

	error = FUNC6(fsname, snm, tnm, B_FALSE);
	if (error == 0)
		(void) FUNC14(snm, tnm);

	FUNC10(&zfs_snapshot_lock);
out:
	FUNC8(from, ZFS_MAX_DATASET_NAME_LEN);
	FUNC8(to, ZFS_MAX_DATASET_NAME_LEN);
	FUNC8(real, ZFS_MAX_DATASET_NAME_LEN);
	FUNC8(fsname, ZFS_MAX_DATASET_NAME_LEN);

	FUNC3(zfsvfs);

	return (error);
}