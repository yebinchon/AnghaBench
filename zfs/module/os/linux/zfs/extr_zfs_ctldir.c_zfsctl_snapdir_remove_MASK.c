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
 int ENOENT ; 
 int ENOTSUP ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  MNT_FORCE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ ZFS_CASE_INSENSITIVE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  ZFS_MAX_DATASET_NAME_LEN ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  zfs_admin_snapshot ; 
 int FUNC8 (char*,int /*<<< orphan*/ *) ; 
 int FUNC9 (TYPE_1__*,char*,int /*<<< orphan*/ ,char*) ; 
 int FUNC10 (char*,int /*<<< orphan*/ ) ; 

int
FUNC11(struct inode *dip, char *name, cred_t *cr, int flags)
{
	zfsvfs_t *zfsvfs = FUNC0(dip);
	char *snapname, *real;
	int error;

	if (!zfs_admin_snapshot)
		return (FUNC1(EACCES));

	FUNC2(zfsvfs);

	snapname = FUNC6(ZFS_MAX_DATASET_NAME_LEN, KM_SLEEP);
	real = FUNC6(ZFS_MAX_DATASET_NAME_LEN, KM_SLEEP);

	if (zfsvfs->z_case == ZFS_CASE_INSENSITIVE) {
		error = FUNC4(zfsvfs->z_os, name, real,
		    ZFS_MAX_DATASET_NAME_LEN, NULL);
		if (error == 0) {
			name = real;
		} else if (error != ENOTSUP) {
			goto out;
		}
	}

	error = FUNC9(FUNC0(dip), name,
	    ZFS_MAX_DATASET_NAME_LEN, snapname);
	if (error == 0)
		error = FUNC8(snapname, cr);
	if (error != 0)
		goto out;

	error = FUNC10(snapname, MNT_FORCE);
	if ((error == 0) || (error == ENOENT))
		error = FUNC5(snapname, B_FALSE);
out:
	FUNC7(snapname, ZFS_MAX_DATASET_NAME_LEN);
	FUNC7(real, ZFS_MAX_DATASET_NAME_LEN);

	FUNC3(zfsvfs);

	return (error);
}