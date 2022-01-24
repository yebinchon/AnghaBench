#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct mnttab {int /*<<< orphan*/  mnt_mntopts; int /*<<< orphan*/  mnt_fstype; int /*<<< orphan*/  mnt_mountp; int /*<<< orphan*/  mnt_special; } ;
struct TYPE_11__ {TYPE_2__* mnt_mntopts; TYPE_2__* mnt_fstype; TYPE_2__* mnt_mountp; TYPE_2__* mnt_special; } ;
struct TYPE_12__ {TYPE_1__ mtn_mt; } ;
typedef  TYPE_2__ mnttab_node_t ;
struct TYPE_13__ {int /*<<< orphan*/  libzfs_mnttab_cache; int /*<<< orphan*/  libzfs_mnttab; } ;
typedef  TYPE_3__ libzfs_handle_t ;
typedef  int /*<<< orphan*/  avl_index_t ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  MNTTAB ; 
 int /*<<< orphan*/  MNTTYPE_ZFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct mnttab*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC6 (TYPE_3__*,int) ; 
 void* FUNC7 (TYPE_3__*,int /*<<< orphan*/ ) ; 

int
FUNC8(libzfs_handle_t *hdl)
{
	struct mnttab entry;

	/* Reopen MNTTAB to prevent reading stale data from open file */
	if (FUNC3(MNTTAB, "r", hdl->libzfs_mnttab) == NULL)
		return (ENOENT);

	while (FUNC4(hdl->libzfs_mnttab, &entry) == 0) {
		mnttab_node_t *mtn;
		avl_index_t where;

		if (FUNC5(entry.mnt_fstype, MNTTYPE_ZFS) != 0)
			continue;

		mtn = FUNC6(hdl, sizeof (mnttab_node_t));
		mtn->mtn_mt.mnt_special = FUNC7(hdl, entry.mnt_special);
		mtn->mtn_mt.mnt_mountp = FUNC7(hdl, entry.mnt_mountp);
		mtn->mtn_mt.mnt_fstype = FUNC7(hdl, entry.mnt_fstype);
		mtn->mtn_mt.mnt_mntopts = FUNC7(hdl, entry.mnt_mntopts);

		/* Exclude duplicate mounts */
		if (FUNC1(&hdl->libzfs_mnttab_cache, mtn, &where) != NULL) {
			FUNC2(mtn->mtn_mt.mnt_special);
			FUNC2(mtn->mtn_mt.mnt_mountp);
			FUNC2(mtn->mtn_mt.mnt_fstype);
			FUNC2(mtn->mtn_mt.mnt_mntopts);
			FUNC2(mtn);
			continue;
		}

		FUNC0(&hdl->libzfs_mnttab_cache, mtn);
	}

	return (0);
}