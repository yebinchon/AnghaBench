#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
struct TYPE_22__ {int /*<<< orphan*/  vdev_trim_lock; int /*<<< orphan*/  vdev_initialize_lock; TYPE_1__* vdev_ops; int /*<<< orphan*/ * vdev_dtl_sm; int /*<<< orphan*/  vdev_detached; } ;
typedef  TYPE_2__ vdev_t ;
typedef  scalar_t__ uint64_t ;
struct TYPE_23__ {int /*<<< orphan*/  spa_dsl_pool; int /*<<< orphan*/  spa_config_generation; int /*<<< orphan*/  spa_config_dirty_list; int /*<<< orphan*/  spa_root_vdev; int /*<<< orphan*/ * spa_pending_vdev; } ;
typedef  TYPE_3__ spa_t ;
struct TYPE_21__ {scalar_t__ vdev_op_leaf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int B_FALSE ; 
 int B_TRUE ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RW_WRITER ; 
 int /*<<< orphan*/  SCL_ALL ; 
 int /*<<< orphan*/  VDEV_INITIALIZE_CANCELED ; 
 int /*<<< orphan*/  VDEV_TRIM_CANCELED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 scalar_t__ FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  spa_namespace_lock ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_3__*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ zio_injection_enabled ; 

void
FUNC21(spa_t *spa, vdev_t *vd, uint64_t txg, int error, char *tag)
{
	FUNC0(FUNC1(&spa_namespace_lock));

	int config_changed = B_FALSE;

	FUNC0(txg > FUNC9(spa));

	spa->spa_pending_vdev = NULL;

	/*
	 * Reassess the DTLs.
	 */
	FUNC16(spa->spa_root_vdev, 0, 0, B_FALSE);

	if (error == 0 && !FUNC2(&spa->spa_config_dirty_list)) {
		config_changed = B_TRUE;
		spa->spa_config_generation++;
	}

	/*
	 * Verify the metaslab classes.
	 */
	FUNC0(FUNC3(FUNC11(spa)) == 0);
	FUNC0(FUNC3(FUNC10(spa)) == 0);
	FUNC0(FUNC3(FUNC12(spa)) == 0);
	FUNC0(FUNC3(FUNC8(spa)) == 0);

	FUNC7(spa, SCL_ALL, spa);

	/*
	 * Panic the system if the specified tag requires it.  This
	 * is useful for ensuring that configurations are updated
	 * transactionally.
	 */
	if (zio_injection_enabled)
		FUNC20(spa, tag, 0);

	/*
	 * Note: this txg_wait_synced() is important because it ensures
	 * that there won't be more than one config change per txg.
	 * This allows us to use the txg as the generation number.
	 */
	if (error == 0)
		FUNC14(spa->spa_dsl_pool, txg);

	if (vd != NULL) {
		FUNC0(!vd->vdev_detached || vd->vdev_dtl_sm == NULL);
		if (vd->vdev_ops->vdev_op_leaf) {
			FUNC4(&vd->vdev_initialize_lock);
			FUNC18(vd, VDEV_INITIALIZE_CANCELED,
			    NULL);
			FUNC5(&vd->vdev_initialize_lock);

			FUNC4(&vd->vdev_trim_lock);
			FUNC19(vd, VDEV_TRIM_CANCELED, NULL);
			FUNC5(&vd->vdev_trim_lock);
		}

		/*
		 * The vdev may be both a leaf and top-level device.
		 */
		FUNC15(vd);

		FUNC6(spa, SCL_ALL, spa, RW_WRITER);
		FUNC17(vd);
		FUNC7(spa, SCL_ALL, spa);
	}

	/*
	 * If the config changed, update the config cache.
	 */
	if (config_changed)
		FUNC13(spa, B_FALSE, B_TRUE);
}