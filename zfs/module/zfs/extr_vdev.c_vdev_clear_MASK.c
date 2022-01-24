#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {scalar_t__ vs_aux; scalar_t__ vs_slow_ios; scalar_t__ vs_checksum_errors; scalar_t__ vs_write_errors; scalar_t__ vs_read_errors; } ;
struct TYPE_22__ {int vdev_children; unsigned long long vdev_faulted; unsigned long long vdev_degraded; void* vdev_unspare; TYPE_2__* vdev_parent; int /*<<< orphan*/ * vdev_aux; struct TYPE_22__* vdev_top; void* vdev_forcefault; TYPE_1__ vdev_stat; void* vdev_cant_write; void* vdev_cant_read; struct TYPE_22__** vdev_child; } ;
typedef  TYPE_3__ vdev_t ;
struct TYPE_23__ {int /*<<< orphan*/  spa_dsl_pool; TYPE_3__* spa_root_vdev; } ;
typedef  TYPE_4__ spa_t ;
struct TYPE_21__ {TYPE_3__** vdev_child; int /*<<< orphan*/ * vdev_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* B_FALSE ; 
 void* B_TRUE ; 
 int /*<<< orphan*/  ESC_ZFS_VDEV_CLEAR ; 
 int /*<<< orphan*/  RW_WRITER ; 
 scalar_t__ SCL_STATE_ALL ; 
 int /*<<< orphan*/  SPA_ASYNC_RESILVER ; 
 int /*<<< orphan*/  SPA_FEATURE_RESILVER_DEFER ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_4__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  vdev_spare_ops ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 scalar_t__ FUNC12 (TYPE_3__*) ; 

void
FUNC13(spa_t *spa, vdev_t *vd)
{
	vdev_t *rvd = spa->spa_root_vdev;

	FUNC0(FUNC3(spa, SCL_STATE_ALL, RW_WRITER) == SCL_STATE_ALL);

	if (vd == NULL)
		vd = rvd;

	vd->vdev_stat.vs_read_errors = 0;
	vd->vdev_stat.vs_write_errors = 0;
	vd->vdev_stat.vs_checksum_errors = 0;
	vd->vdev_stat.vs_slow_ios = 0;

	for (int c = 0; c < vd->vdev_children; c++)
		FUNC13(spa, vd->vdev_child[c]);

	/*
	 * It makes no sense to "clear" an indirect vdev.
	 */
	if (!FUNC6(vd))
		return;

	/*
	 * If we're in the FAULTED state or have experienced failed I/O, then
	 * clear the persistent state and attempt to reopen the device.  We
	 * also mark the vdev config dirty, so that the new faulted state is
	 * written out to disk.
	 */
	if (vd->vdev_faulted || vd->vdev_degraded ||
	    !FUNC8(vd) || !FUNC12(vd)) {
		/*
		 * When reopening in response to a clear event, it may be due to
		 * a fmadm repair request.  In this case, if the device is
		 * still broken, we want to still post the ereport again.
		 */
		vd->vdev_forcefault = B_TRUE;

		vd->vdev_faulted = vd->vdev_degraded = 0ULL;
		vd->vdev_cant_read = B_FALSE;
		vd->vdev_cant_write = B_FALSE;
		vd->vdev_stat.vs_aux = 0;

		FUNC9(vd == rvd ? rvd : vd->vdev_top);

		vd->vdev_forcefault = B_FALSE;

		if (vd != rvd && FUNC12(vd->vdev_top))
			FUNC11(vd->vdev_top);

		if (vd->vdev_aux == NULL && !FUNC7(vd)) {
			if (FUNC1(spa->spa_dsl_pool) &&
			    FUNC5(spa,
			    SPA_FEATURE_RESILVER_DEFER))
				FUNC10(spa, vd);
			else
				FUNC2(spa, SPA_ASYNC_RESILVER);
		}

		FUNC4(spa, vd, NULL, ESC_ZFS_VDEV_CLEAR);
	}

	/*
	 * When clearing a FMA-diagnosed fault, we always want to
	 * unspare the device, as we assume that the original spare was
	 * done in response to the FMA fault.
	 */
	if (!FUNC7(vd) && vd->vdev_parent != NULL &&
	    vd->vdev_parent->vdev_ops == &vdev_spare_ops &&
	    vd->vdev_parent->vdev_child[0] == vd)
		vd->vdev_unspare = B_TRUE;
}