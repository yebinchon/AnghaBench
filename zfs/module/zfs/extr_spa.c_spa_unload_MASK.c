#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_37__   TYPE_6__ ;
typedef  struct TYPE_36__   TYPE_5__ ;
typedef  struct TYPE_35__   TYPE_4__ ;
typedef  struct TYPE_34__   TYPE_3__ ;
typedef  struct TYPE_33__   TYPE_2__ ;
typedef  struct TYPE_32__   TYPE_1__ ;

/* Type definitions */
struct TYPE_36__ {int vdev_children; TYPE_1__* vdev_mg; struct TYPE_36__** vdev_child; } ;
typedef  TYPE_5__ vdev_t ;
struct TYPE_35__ {int sav_count; int /*<<< orphan*/ * sav_config; TYPE_5__** sav_vdevs; } ;
struct TYPE_34__ {int sav_count; int /*<<< orphan*/ * sav_config; TYPE_5__** sav_vdevs; } ;
struct TYPE_33__ {scalar_t__ mmp_thread; } ;
struct TYPE_37__ {int /*<<< orphan*/ * spa_comment; void* spa_indirect_vdevs_loaded; scalar_t__ spa_async_suspended; TYPE_4__ spa_l2cache; TYPE_3__ spa_spares; int /*<<< orphan*/ * spa_meta_objset; int /*<<< orphan*/ * spa_dsl_pool; TYPE_5__* spa_root_vdev; int /*<<< orphan*/  spa_deferred_bpobj; int /*<<< orphan*/ * spa_vdev_removal; TYPE_5__** spa_async_zio_root; TYPE_2__ spa_mmp; void* spa_sync_on; } ;
typedef  TYPE_6__ spa_t ;
struct TYPE_32__ {int /*<<< orphan*/  mg_taskq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* B_FALSE ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ POOL_STATE_UNINITIALIZED ; 
 int /*<<< orphan*/  RW_WRITER ; 
 int /*<<< orphan*/  SCL_ALL ; 
 int /*<<< orphan*/  VDEV_INITIALIZE_ACTIVE ; 
 int /*<<< orphan*/  VDEV_TRIM_ACTIVE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__**,int) ; 
 int max_ncpus ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_6__*,int /*<<< orphan*/ ,TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_6__*,int /*<<< orphan*/ ,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_6__*,char*) ; 
 int /*<<< orphan*/  spa_namespace_lock ; 
 scalar_t__ FUNC17 (TYPE_6__*) ; 
 scalar_t__ FUNC18 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (TYPE_5__*) ; 

__attribute__((used)) static void
FUNC32(spa_t *spa)
{
	FUNC0(FUNC1(&spa_namespace_lock));
	FUNC0(FUNC18(spa) != POOL_STATE_UNINITIALIZED);

	FUNC14(FUNC13(spa));
	FUNC16(spa, "UNLOADING");

	FUNC23(spa);

	/*
	 * If the log space map feature is enabled and the pool is getting
	 * exported (but not destroyed), we want to spend some time flushing
	 * as many metaslabs as we can in an attempt to destroy log space
	 * maps and save import time.
	 */
	if (FUNC17(spa))
		FUNC20(spa);

	/*
	 * Stop async tasks.
	 */
	FUNC8(spa);

	if (spa->spa_root_vdev) {
		vdev_t *root_vdev = spa->spa_root_vdev;
		FUNC29(root_vdev, VDEV_INITIALIZE_ACTIVE);
		FUNC30(root_vdev, VDEV_TRIM_ACTIVE);
		FUNC26(spa);
	}

	/*
	 * Stop syncing.
	 */
	if (spa->spa_sync_on) {
		FUNC25(spa->spa_dsl_pool);
		spa->spa_sync_on = B_FALSE;
	}

	/*
	 * This ensures that there is no async metaslab prefetching
	 * while we attempt to unload the spa.
	 */
	if (spa->spa_root_vdev != NULL) {
		for (int c = 0; c < spa->spa_root_vdev->vdev_children; c++) {
			vdev_t *vc = spa->spa_root_vdev->vdev_child[c];
			if (vc->vdev_mg != NULL)
				FUNC24(vc->vdev_mg->mg_taskq);
		}
	}

	if (spa->spa_mmp.mmp_thread)
		FUNC6(spa);

	/*
	 * Wait for any outstanding async I/O to complete.
	 */
	if (spa->spa_async_zio_root != NULL) {
		for (int i = 0; i < max_ncpus; i++)
			(void) FUNC31(spa->spa_async_zio_root[i]);
		FUNC5(spa->spa_async_zio_root, max_ncpus * sizeof (void *));
		spa->spa_async_zio_root = NULL;
	}

	if (spa->spa_vdev_removal != NULL) {
		FUNC22(spa->spa_vdev_removal);
		spa->spa_vdev_removal = NULL;
	}

	FUNC12(spa);

	FUNC9(spa);

	FUNC2(&spa->spa_deferred_bpobj);

	FUNC10(spa, SCL_ALL, spa, RW_WRITER);

	/*
	 * Close all vdevs.
	 */
	if (spa->spa_root_vdev)
		FUNC28(spa->spa_root_vdev);
	FUNC0(spa->spa_root_vdev == NULL);

	/*
	 * Close the dsl pool.
	 */
	if (spa->spa_dsl_pool) {
		FUNC4(spa->spa_dsl_pool);
		spa->spa_dsl_pool = NULL;
		spa->spa_meta_objset = NULL;
	}

	FUNC3(spa);
	FUNC21(spa);

	/*
	 * Drop and purge level 2 cache
	 */
	FUNC15(spa);

	for (int i = 0; i < spa->spa_spares.sav_count; i++)
		FUNC28(spa->spa_spares.sav_vdevs[i]);
	if (spa->spa_spares.sav_vdevs) {
		FUNC5(spa->spa_spares.sav_vdevs,
		    spa->spa_spares.sav_count * sizeof (void *));
		spa->spa_spares.sav_vdevs = NULL;
	}
	if (spa->spa_spares.sav_config) {
		FUNC7(spa->spa_spares.sav_config);
		spa->spa_spares.sav_config = NULL;
	}
	spa->spa_spares.sav_count = 0;

	for (int i = 0; i < spa->spa_l2cache.sav_count; i++) {
		FUNC27(spa->spa_l2cache.sav_vdevs[i]);
		FUNC28(spa->spa_l2cache.sav_vdevs[i]);
	}
	if (spa->spa_l2cache.sav_vdevs) {
		FUNC5(spa->spa_l2cache.sav_vdevs,
		    spa->spa_l2cache.sav_count * sizeof (void *));
		spa->spa_l2cache.sav_vdevs = NULL;
	}
	if (spa->spa_l2cache.sav_config) {
		FUNC7(spa->spa_l2cache.sav_config);
		spa->spa_l2cache.sav_config = NULL;
	}
	spa->spa_l2cache.sav_count = 0;

	spa->spa_async_suspended = 0;

	spa->spa_indirect_vdevs_loaded = B_FALSE;

	if (spa->spa_comment != NULL) {
		FUNC19(spa->spa_comment);
		spa->spa_comment = NULL;
	}

	FUNC11(spa, SCL_ALL, spa);
}