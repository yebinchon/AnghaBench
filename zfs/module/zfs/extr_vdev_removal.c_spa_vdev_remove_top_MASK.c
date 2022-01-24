#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {scalar_t__ vdev_id; int /*<<< orphan*/  vdev_removing; int /*<<< orphan*/ * vdev_mg; TYPE_2__* vdev_spa; } ;
typedef  TYPE_1__ vdev_t ;
typedef  scalar_t__ uint64_t ;
struct TYPE_15__ {int /*<<< orphan*/  spa_dsl_pool; } ;
typedef  TYPE_2__ spa_t ;
typedef  int /*<<< orphan*/  metaslab_group_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  SPA_ASYNC_AUTOTRIM_RESTART ; 
 int /*<<< orphan*/  SPA_ASYNC_INITIALIZE_RESTART ; 
 int /*<<< orphan*/  SPA_ASYNC_TRIM_RESTART ; 
 scalar_t__ TXG_CONCURRENT_STATES ; 
 scalar_t__ TXG_DEFER_SIZE ; 
 int /*<<< orphan*/  VDD_DTL ; 
 int /*<<< orphan*/  VDEV_INITIALIZE_ACTIVE ; 
 int /*<<< orphan*/  VDEV_TRIM_ACTIVE ; 
 int /*<<< orphan*/  ZFS_SPACE_CHECK_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_2__*) ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vdev_remove_initiate_sync ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC15(vdev_t *vd, uint64_t *txg)
{
	spa_t *spa = vd->vdev_spa;
	int error;

	/*
	 * Check for errors up-front, so that we don't waste time
	 * passivating the metaslab group and clearing the ZIL if there
	 * are errors.
	 */
	error = FUNC9(vd);
	if (error != 0)
		return (error);

	/*
	 * Stop allocating from this vdev.  Note that we must check
	 * that this is not the only device in the pool before
	 * passivating, otherwise we will not be able to make
	 * progress because we can't allocate from any vdevs.
	 * The above check for sufficient free space serves this
	 * purpose.
	 */
	metaslab_group_t *mg = vd->vdev_mg;
	FUNC4(mg);

	/*
	 * Wait for the youngest allocations and frees to sync,
	 * and then wait for the deferral of those frees to finish.
	 */
	FUNC8(spa, NULL,
	    *txg + TXG_CONCURRENT_STATES + TXG_DEFER_SIZE, 0, FTAG);

	/*
	 * We must ensure that no "stubby" log blocks are allocated
	 * on the device to be removed.  These blocks could be
	 * written at any time, including while we are in the middle
	 * of copying them.
	 */
	error = FUNC6(spa);

	/*
	 * We stop any initializing and TRIM that is currently in progress
	 * but leave the state as "active". This will allow the process to
	 * resume if the removal is canceled sometime later.
	 */
	FUNC13(vd, VDEV_INITIALIZE_ACTIVE);
	FUNC14(vd, VDEV_TRIM_ACTIVE);
	FUNC10(vd);

	*txg = FUNC7(spa);

	/*
	 * Things might have changed while the config lock was dropped
	 * (e.g. space usage).  Check for errors again.
	 */
	if (error == 0)
		error = FUNC9(vd);

	if (error != 0) {
		FUNC3(mg);
		FUNC5(spa, SPA_ASYNC_INITIALIZE_RESTART);
		FUNC5(spa, SPA_ASYNC_TRIM_RESTART);
		FUNC5(spa, SPA_ASYNC_AUTOTRIM_RESTART);
		return (error);
	}

	vd->vdev_removing = B_TRUE;

	FUNC12(vd, VDD_DTL, *txg);
	FUNC11(vd);
	dmu_tx_t *tx = FUNC1(spa->spa_dsl_pool, *txg);
	FUNC2(spa->spa_dsl_pool,
	    vdev_remove_initiate_sync,
	    (void *)(uintptr_t)vd->vdev_id, 0, ZFS_SPACE_CHECK_NONE, tx);
	FUNC0(tx);

	return (0);
}