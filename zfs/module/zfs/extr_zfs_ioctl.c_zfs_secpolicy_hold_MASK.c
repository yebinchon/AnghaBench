#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  zfs_cmd_t ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  cred_t ;

/* Variables and functions */
 int /*<<< orphan*/  ZFS_DELEG_PERM_HOLD ; 
 int ZFS_MAX_DATASET_NAME_LEN ; 
 int FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(zfs_cmd_t *zc, nvlist_t *innvl, cred_t *cr)
{
	nvpair_t *pair;
	nvlist_t *holds;
	int error;

	holds = FUNC1(innvl, "holds");

	for (pair = FUNC2(holds, NULL); pair != NULL;
	    pair = FUNC2(holds, pair)) {
		char fsname[ZFS_MAX_DATASET_NAME_LEN];
		error = FUNC0(FUNC3(pair), fsname);
		if (error != 0)
			return (error);
		error = FUNC4(fsname,
		    ZFS_DELEG_PERM_HOLD, cr);
		if (error != 0)
			return (error);
	}
	return (0);
}