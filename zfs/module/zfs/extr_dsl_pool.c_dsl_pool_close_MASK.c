#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zfs_all_blkstats_t ;
struct TYPE_9__ {TYPE_2__* dp_blkstats; int /*<<< orphan*/  dp_iput_taskq; int /*<<< orphan*/  dp_unlinked_drain_taskq; int /*<<< orphan*/  dp_spaceavail_cv; int /*<<< orphan*/  dp_lock; int /*<<< orphan*/  dp_config_rwlock; int /*<<< orphan*/  dp_spa; int /*<<< orphan*/  dp_sync_taskq; int /*<<< orphan*/  dp_zil_clean_taskq; int /*<<< orphan*/  dp_dirty_dirs; int /*<<< orphan*/  dp_early_sync_tasks; int /*<<< orphan*/  dp_sync_tasks; int /*<<< orphan*/  dp_dirty_zilogs; int /*<<< orphan*/  dp_dirty_datasets; int /*<<< orphan*/ * dp_meta_objset; int /*<<< orphan*/  dp_obsolete_bpobj; int /*<<< orphan*/  dp_free_bpobj; int /*<<< orphan*/ * dp_root_dir; int /*<<< orphan*/ * dp_leak_dir; int /*<<< orphan*/ * dp_free_dir; int /*<<< orphan*/ * dp_mos_dir; int /*<<< orphan*/ * dp_origin_snap; } ;
typedef  TYPE_1__ dsl_pool_t ;
struct TYPE_10__ {int /*<<< orphan*/  zab_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,int) ; 

void
FUNC16(dsl_pool_t *dp)
{
	/*
	 * Drop our references from dsl_pool_open().
	 *
	 * Since we held the origin_snap from "syncing" context (which
	 * includes pool-opening context), it actually only got a "ref"
	 * and not a hold, so just drop that here.
	 */
	if (dp->dp_origin_snap != NULL)
		FUNC5(dp->dp_origin_snap, dp);
	if (dp->dp_mos_dir != NULL)
		FUNC6(dp->dp_mos_dir, dp);
	if (dp->dp_free_dir != NULL)
		FUNC6(dp->dp_free_dir, dp);
	if (dp->dp_leak_dir != NULL)
		FUNC6(dp->dp_leak_dir, dp);
	if (dp->dp_root_dir != NULL)
		FUNC6(dp->dp_root_dir, dp);

	FUNC1(&dp->dp_free_bpobj);
	FUNC1(&dp->dp_obsolete_bpobj);

	/* undo the dmu_objset_open_impl(mos) from dsl_pool_open() */
	if (dp->dp_meta_objset != NULL)
		FUNC4(dp->dp_meta_objset);

	FUNC14(&dp->dp_dirty_datasets);
	FUNC14(&dp->dp_dirty_zilogs);
	FUNC14(&dp->dp_sync_tasks);
	FUNC14(&dp->dp_early_sync_tasks);
	FUNC14(&dp->dp_dirty_dirs);

	FUNC12(dp->dp_zil_clean_taskq);
	FUNC12(dp->dp_sync_taskq);

	/*
	 * We can't set retry to TRUE since we're explicitly specifying
	 * a spa to flush. This is good enough; any missed buffers for
	 * this spa won't cause trouble, and they'll eventually fall
	 * out of the ARC just like any other unused buffer.
	 */
	FUNC0(dp->dp_spa, FALSE);

	FUNC9(dp->dp_spa);
	FUNC13(dp);
	FUNC7(dp);
	FUNC3();

	FUNC11(&dp->dp_config_rwlock);
	FUNC10(&dp->dp_lock);
	FUNC2(&dp->dp_spaceavail_cv);
	FUNC12(dp->dp_unlinked_drain_taskq);
	FUNC12(dp->dp_iput_taskq);
	if (dp->dp_blkstats != NULL) {
		FUNC10(&dp->dp_blkstats->zab_lock);
		FUNC15(dp->dp_blkstats, sizeof (zfs_all_blkstats_t));
	}
	FUNC8(dp, sizeof (dsl_pool_t));
}