#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  z_os; } ;
typedef  TYPE_1__ zfsvfs_t ;
typedef  int /*<<< orphan*/  vattr_t ;
struct inode {int dummy; } ;
typedef  int /*<<< orphan*/  cred_t ;

/* Variables and functions */
 int /*<<< orphan*/  EACCES ; 
 int /*<<< orphan*/  EILSEQ ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZFS_MAX_DATASET_NAME_LEN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (char*,char*) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  zfs_admin_snapshot ; 
 scalar_t__ FUNC6 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (char*,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct inode*,char*,struct inode**,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC9(struct inode *dip, char *dirname, vattr_t *vap,
    struct inode **ipp, cred_t *cr, int flags)
{
	zfsvfs_t *zfsvfs = FUNC0(dip);
	char *dsname;
	int error;

	if (!zfs_admin_snapshot)
		return (FUNC1(EACCES));

	dsname = FUNC4(ZFS_MAX_DATASET_NAME_LEN, KM_SLEEP);

	if (FUNC6(dirname, NULL, NULL) != 0) {
		error = FUNC1(EILSEQ);
		goto out;
	}

	FUNC2(zfsvfs->z_os, dsname);

	error = FUNC7(dsname, cr);
	if (error != 0)
		goto out;

	if (error == 0) {
		error = FUNC3(dsname, dirname);
		if (error != 0)
			goto out;

		error = FUNC8(dip, dirname, ipp,
		    0, cr, NULL, NULL);
	}
out:
	FUNC5(dsname, ZFS_MAX_DATASET_NAME_LEN);

	return (error);
}