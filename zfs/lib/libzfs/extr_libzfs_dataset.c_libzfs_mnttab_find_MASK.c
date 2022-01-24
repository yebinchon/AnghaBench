#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct mnttab {char* mnt_special; int /*<<< orphan*/  mnt_fstype; int /*<<< orphan*/  member_0; } ;
struct TYPE_8__ {struct mnttab mtn_mt; } ;
typedef  TYPE_1__ mnttab_node_t ;
struct TYPE_9__ {int /*<<< orphan*/  libzfs_mnttab_cache_lock; int /*<<< orphan*/  libzfs_mnttab_cache; int /*<<< orphan*/  libzfs_mnttab; int /*<<< orphan*/  libzfs_mnttab_enable; } ;
typedef  TYPE_2__ libzfs_handle_t ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  MNTTAB ; 
 int /*<<< orphan*/  MNTTYPE_ZFS ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct mnttab*,struct mnttab*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int
FUNC8(libzfs_handle_t *hdl, const char *fsname,
    struct mnttab *entry)
{
	mnttab_node_t find;
	mnttab_node_t *mtn;
	int ret = ENOENT;

	if (!hdl->libzfs_mnttab_enable) {
		struct mnttab srch = { 0 };

		if (FUNC1(&hdl->libzfs_mnttab_cache))
			FUNC4(hdl);

		/* Reopen MNTTAB to prevent reading stale data from open file */
		if (FUNC2(MNTTAB, "r", hdl->libzfs_mnttab) == NULL)
			return (ENOENT);

		srch.mnt_special = (char *)fsname;
		srch.mnt_fstype = MNTTYPE_ZFS;
		if (FUNC3(hdl->libzfs_mnttab, entry, &srch) == 0)
			return (0);
		else
			return (ENOENT);
	}

	FUNC6(&hdl->libzfs_mnttab_cache_lock);
	if (FUNC1(&hdl->libzfs_mnttab_cache) == 0) {
		int error;

		if ((error = FUNC5(hdl)) != 0) {
			FUNC7(&hdl->libzfs_mnttab_cache_lock);
			return (error);
		}
	}

	find.mtn_mt.mnt_special = (char *)fsname;
	mtn = FUNC0(&hdl->libzfs_mnttab_cache, &find, NULL);
	if (mtn) {
		*entry = mtn->mtn_mt;
		ret = 0;
	}
	FUNC7(&hdl->libzfs_mnttab_cache_lock);
	return (ret);
}