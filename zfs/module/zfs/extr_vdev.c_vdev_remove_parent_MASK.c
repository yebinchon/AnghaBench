#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_12__ ;

/* Type definitions */
struct TYPE_14__ {int vdev_children; struct TYPE_14__* vdev_top; int /*<<< orphan*/  vdev_id; int /*<<< orphan*/  vdev_asize; TYPE_12__* vdev_spa; int /*<<< orphan*/  vdev_guid_sum; scalar_t__ vdev_guid; scalar_t__ vdev_orig_guid; int /*<<< orphan*/  vdev_ashift; int /*<<< orphan*/ * vdev_ops; struct TYPE_14__* vdev_parent; } ;
typedef  TYPE_1__ vdev_t ;
typedef  scalar_t__ uint64_t ;
struct TYPE_13__ {int /*<<< orphan*/  spa_autoexpand; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  RW_WRITER ; 
 scalar_t__ SCL_ALL ; 
 scalar_t__ FUNC1 (TYPE_12__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  vdev_mirror_ops ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  vdev_replacing_ops ; 
 int /*<<< orphan*/  vdev_spare_ops ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_1__*) ; 

void
FUNC7(vdev_t *cvd)
{
	vdev_t *mvd = cvd->vdev_parent;
	vdev_t *pvd = mvd->vdev_parent;

	FUNC0(FUNC1(cvd->vdev_spa, SCL_ALL, RW_WRITER) == SCL_ALL);

	FUNC0(mvd->vdev_children == 1);
	FUNC0(mvd->vdev_ops == &vdev_mirror_ops ||
	    mvd->vdev_ops == &vdev_replacing_ops ||
	    mvd->vdev_ops == &vdev_spare_ops);
	cvd->vdev_ashift = mvd->vdev_ashift;

	FUNC4(mvd, cvd);
	FUNC4(pvd, mvd);

	/*
	 * If cvd will replace mvd as a top-level vdev, preserve mvd's guid.
	 * Otherwise, we could have detached an offline device, and when we
	 * go to import the pool we'll think we have two top-level vdevs,
	 * instead of a different version of the same top-level vdev.
	 */
	if (mvd->vdev_top == mvd) {
		uint64_t guid_delta = mvd->vdev_guid - cvd->vdev_guid;
		cvd->vdev_orig_guid = cvd->vdev_guid;
		cvd->vdev_guid += guid_delta;
		cvd->vdev_guid_sum += guid_delta;

		/*
		 * If pool not set for autoexpand, we need to also preserve
		 * mvd's asize to prevent automatic expansion of cvd.
		 * Otherwise if we are adjusting the mirror by attaching and
		 * detaching children of non-uniform sizes, the mirror could
		 * autoexpand, unexpectedly requiring larger devices to
		 * re-establish the mirror.
		 */
		if (!cvd->vdev_spa->spa_autoexpand)
			cvd->vdev_asize = mvd->vdev_asize;
	}
	cvd->vdev_id = mvd->vdev_id;
	FUNC2(pvd, cvd);
	FUNC6(cvd->vdev_top, cvd->vdev_top);

	if (cvd == cvd->vdev_top)
		FUNC5(mvd, cvd);

	FUNC0(mvd->vdev_children == 0);
	FUNC3(mvd);
}