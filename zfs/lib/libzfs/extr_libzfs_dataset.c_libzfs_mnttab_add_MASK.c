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
struct TYPE_11__ {void* mnt_mntopts; void* mnt_fstype; void* mnt_mountp; void* mnt_special; } ;
struct TYPE_12__ {TYPE_1__ mtn_mt; } ;
typedef  TYPE_2__ mnttab_node_t ;
struct TYPE_13__ {int /*<<< orphan*/  libzfs_mnttab_cache_lock; int /*<<< orphan*/  libzfs_mnttab_cache; } ;
typedef  TYPE_3__ libzfs_handle_t ;

/* Variables and functions */
 char const* MNTTYPE_ZFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC6 (TYPE_3__*,int) ; 
 void* FUNC7 (TYPE_3__*,char const*) ; 

void
FUNC8(libzfs_handle_t *hdl, const char *special,
    const char *mountp, const char *mntopts)
{
	mnttab_node_t *mtn;

	FUNC4(&hdl->libzfs_mnttab_cache_lock);
	if (FUNC2(&hdl->libzfs_mnttab_cache) != 0) {
		mtn = FUNC6(hdl, sizeof (mnttab_node_t));
		mtn->mtn_mt.mnt_special = FUNC7(hdl, special);
		mtn->mtn_mt.mnt_mountp = FUNC7(hdl, mountp);
		mtn->mtn_mt.mnt_fstype = FUNC7(hdl, MNTTYPE_ZFS);
		mtn->mtn_mt.mnt_mntopts = FUNC7(hdl, mntopts);
		/*
		 * Another thread may have already added this entry
		 * via libzfs_mnttab_update. If so we should skip it.
		 */
		if (FUNC1(&hdl->libzfs_mnttab_cache, mtn, NULL) != NULL)
			FUNC3(mtn);
		else
			FUNC0(&hdl->libzfs_mnttab_cache, mtn);
	}
	FUNC5(&hdl->libzfs_mnttab_cache_lock);
}