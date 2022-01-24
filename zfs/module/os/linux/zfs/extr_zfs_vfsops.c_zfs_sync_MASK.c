#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * z_log; int /*<<< orphan*/  z_os; } ;
typedef  TYPE_1__ zfsvfs_t ;
struct super_block {TYPE_1__* s_fs_info; } ;
struct TYPE_7__ {int /*<<< orphan*/  dp_spa; } ;
typedef  TYPE_2__ dsl_pool_t ;
typedef  int /*<<< orphan*/  cred_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC6(struct super_block *sb, int wait, cred_t *cr)
{
	zfsvfs_t *zfsvfs = sb->s_fs_info;

	/*
	 * Semantically, the only requirement is that the sync be initiated.
	 * The DMU syncs out txgs frequently, so there's nothing to do.
	 */
	if (!wait)
		return (0);

	if (zfsvfs != NULL) {
		/*
		 * Sync a specific filesystem.
		 */
		dsl_pool_t *dp;

		FUNC0(zfsvfs);
		dp = FUNC2(zfsvfs->z_os);

		/*
		 * If the system is shutting down, then skip any
		 * filesystems which may exist on a suspended pool.
		 */
		if (FUNC3(dp->dp_spa)) {
			FUNC1(zfsvfs);
			return (0);
		}

		if (zfsvfs->z_log != NULL)
			FUNC5(zfsvfs->z_log, 0);

		FUNC1(zfsvfs);
	} else {
		/*
		 * Sync all ZFS filesystems.  This is what happens when you
		 * run sync(1M).  Unlike other filesystems, ZFS honors the
		 * request by waiting for all pools to commit all dirty data.
		 */
		FUNC4();
	}

	return (0);
}