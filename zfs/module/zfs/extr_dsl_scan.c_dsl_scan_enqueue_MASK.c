#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zbookmark_phys_t ;
struct TYPE_16__ {int /*<<< orphan*/  vdev_scan_io_queue_lock; int /*<<< orphan*/ * vdev_scan_io_queue; } ;
typedef  TYPE_2__ vdev_t ;
typedef  int /*<<< orphan*/  spa_t ;
typedef  int /*<<< orphan*/  dva_t ;
struct TYPE_17__ {TYPE_1__* dp_scan; int /*<<< orphan*/ * dp_spa; } ;
typedef  TYPE_3__ dsl_pool_t ;
struct TYPE_18__ {int /*<<< orphan*/ * blk_dva; } ;
typedef  TYPE_4__ blkptr_t ;
struct TYPE_15__ {int /*<<< orphan*/  scn_is_sorted; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_4__ const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__ const*) ; 
 scalar_t__ FUNC3 (TYPE_4__ const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,TYPE_4__ const*,int,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_4__ const*,int,int,int /*<<< orphan*/  const*) ; 
 TYPE_2__* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11(dsl_pool_t *dp, const blkptr_t *bp, int zio_flags,
    const zbookmark_phys_t *zb)
{
	spa_t *spa = dp->dp_spa;

	FUNC0(!FUNC2(bp));

	/*
	 * Gang blocks are hard to issue sequentially, so we just issue them
	 * here immediately instead of queuing them.
	 */
	if (!dp->dp_scan->scn_is_sorted || FUNC3(bp)) {
		FUNC7(dp, bp, zio_flags, zb, NULL);
		return;
	}

	for (int i = 0; i < FUNC1(bp); i++) {
		dva_t dva;
		vdev_t *vdev;

		dva = bp->blk_dva[i];
		vdev = FUNC10(spa, FUNC4(&dva));
		FUNC0(vdev != NULL);

		FUNC5(&vdev->vdev_scan_io_queue_lock);
		if (vdev->vdev_scan_io_queue == NULL)
			vdev->vdev_scan_io_queue = FUNC8(vdev);
		FUNC0(dp->dp_scan != NULL);
		FUNC9(vdev->vdev_scan_io_queue, bp,
		    i, zio_flags, zb);
		FUNC6(&vdev->vdev_scan_io_queue_lock);
	}
}