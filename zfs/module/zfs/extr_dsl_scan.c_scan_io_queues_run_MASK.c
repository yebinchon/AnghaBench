#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  vdev_scan_io_queue_lock; int /*<<< orphan*/ * vdev_scan_io_queue; } ;
typedef  TYPE_3__ vdev_t ;
typedef  size_t uint64_t ;
struct TYPE_11__ {TYPE_2__* spa_root_vdev; } ;
typedef  TYPE_4__ spa_t ;
struct TYPE_12__ {scalar_t__ scn_bytes_pending; int /*<<< orphan*/ * scn_taskq; int /*<<< orphan*/  scn_is_sorted; TYPE_1__* scn_dp; } ;
typedef  TYPE_5__ dsl_scan_t ;
struct TYPE_9__ {int vdev_children; TYPE_3__** vdev_child; } ;
struct TYPE_8__ {TYPE_4__* dp_spa; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RW_READER ; 
 int /*<<< orphan*/  SCL_CONFIG ; 
 scalar_t__ TASKQID_INVALID ; 
 int /*<<< orphan*/  TASKQ_PREPOPULATE ; 
 int /*<<< orphan*/  TQ_SLEEP ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  minclsyspri ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  scan_io_queues_run_one ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (char*,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(dsl_scan_t *scn)
{
	spa_t *spa = scn->scn_dp->dp_spa;

	FUNC0(scn->scn_is_sorted);
	FUNC0(FUNC4(spa, SCL_CONFIG, RW_READER));

	if (scn->scn_bytes_pending == 0)
		return;

	if (scn->scn_taskq == NULL) {
		int nthreads = spa->spa_root_vdev->vdev_children;

		/*
		 * We need to make this taskq *always* execute as many
		 * threads in parallel as we have top-level vdevs and no
		 * less, otherwise strange serialization of the calls to
		 * scan_io_queues_run_one can occur during spa_sync runs
		 * and that significantly impacts performance.
		 */
		scn->scn_taskq = FUNC5("dsl_scan_iss", nthreads,
		    minclsyspri, nthreads, nthreads, TASKQ_PREPOPULATE);
	}

	for (uint64_t i = 0; i < spa->spa_root_vdev->vdev_children; i++) {
		vdev_t *vd = spa->spa_root_vdev->vdev_child[i];

		FUNC2(&vd->vdev_scan_io_queue_lock);
		if (vd->vdev_scan_io_queue != NULL) {
			FUNC1(FUNC6(scn->scn_taskq,
			    scan_io_queues_run_one, vd->vdev_scan_io_queue,
			    TQ_SLEEP) != TASKQID_INVALID);
		}
		FUNC3(&vd->vdev_scan_io_queue_lock);
	}

	/*
	 * Wait for the queues to finish issuing their IOs for this run
	 * before we return. There may still be IOs in flight at this
	 * point.
	 */
	FUNC7(scn->scn_taskq);
}