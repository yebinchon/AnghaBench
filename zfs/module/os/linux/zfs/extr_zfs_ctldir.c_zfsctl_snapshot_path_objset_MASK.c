#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* z_vfs; int /*<<< orphan*/ * z_os; } ;
typedef  TYPE_2__ zfsvfs_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  fstrans_cookie_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_4__ {char* vfs_mntpoint; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZFS_MAX_DATASET_NAME_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,scalar_t__*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(zfsvfs_t *zfsvfs, uint64_t objsetid,
    int path_len, char *full_path)
{
	objset_t *os = zfsvfs->z_os;
	fstrans_cookie_t cookie;
	char *snapname;
	boolean_t case_conflict;
	uint64_t id, pos = 0;
	int error = 0;

	if (zfsvfs->z_vfs->vfs_mntpoint == NULL)
		return (FUNC0(ENOENT));

	cookie = FUNC8();
	snapname = FUNC5(ZFS_MAX_DATASET_NAME_LEN, KM_SLEEP);

	while (error == 0) {
		FUNC3(FUNC1(os), FTAG);
		error = FUNC2(zfsvfs->z_os,
		    ZFS_MAX_DATASET_NAME_LEN, snapname, &id, &pos,
		    &case_conflict);
		FUNC4(FUNC1(os), FTAG);
		if (error)
			goto out;

		if (id == objsetid)
			break;
	}

	FUNC7(full_path, path_len, "%s/.zfs/snapshot/%s",
	    zfsvfs->z_vfs->vfs_mntpoint, snapname);
out:
	FUNC6(snapname, ZFS_MAX_DATASET_NAME_LEN);
	FUNC9(cookie);

	return (error);
}