#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int vdev_children; scalar_t__ vdev_isspare; struct TYPE_7__** vdev_child; scalar_t__ vdev_unspare; int /*<<< orphan*/ * vdev_ops; } ;
typedef  TYPE_1__ vdev_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DTL_MISSING ; 
 int /*<<< orphan*/  DTL_OUTAGE ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  vdev_replacing_ops ; 
 int /*<<< orphan*/  vdev_spare_ops ; 

__attribute__((used)) static vdev_t *
FUNC4(vdev_t *vd)
{
	vdev_t *newvd, *oldvd;

	for (int c = 0; c < vd->vdev_children; c++) {
		oldvd = FUNC4(vd->vdev_child[c]);
		if (oldvd != NULL)
			return (oldvd);
	}

	/*
	 * Check for a completed replacement.  We always consider the first
	 * vdev in the list to be the oldest vdev, and the last one to be
	 * the newest (see spa_vdev_attach() for how that works).  In
	 * the case where the newest vdev is faulted, we will not automatically
	 * remove it after a resilver completes.  This is OK as it will require
	 * user intervention to determine which disk the admin wishes to keep.
	 */
	if (vd->vdev_ops == &vdev_replacing_ops) {
		FUNC0(vd->vdev_children > 1);

		newvd = vd->vdev_child[vd->vdev_children - 1];
		oldvd = vd->vdev_child[0];

		if (FUNC1(newvd, DTL_MISSING) &&
		    FUNC1(newvd, DTL_OUTAGE) &&
		    !FUNC2(oldvd))
			return (oldvd);
	}

	/*
	 * Check for a completed resilver with the 'unspare' flag set.
	 * Also potentially update faulted state.
	 */
	if (vd->vdev_ops == &vdev_spare_ops) {
		vdev_t *first = vd->vdev_child[0];
		vdev_t *last = vd->vdev_child[vd->vdev_children - 1];

		if (last->vdev_unspare) {
			oldvd = first;
			newvd = last;
		} else if (first->vdev_unspare) {
			oldvd = last;
			newvd = first;
		} else {
			oldvd = NULL;
		}

		if (oldvd != NULL &&
		    FUNC1(newvd, DTL_MISSING) &&
		    FUNC1(newvd, DTL_OUTAGE) &&
		    !FUNC2(oldvd))
			return (oldvd);

		FUNC3(vd);

		/*
		 * If there are more than two spares attached to a disk,
		 * and those spares are not required, then we want to
		 * attempt to free them up now so that they can be used
		 * by other pools.  Once we're back down to a single
		 * disk+spare, we stop removing them.
		 */
		if (vd->vdev_children > 2) {
			newvd = vd->vdev_child[1];

			if (newvd->vdev_isspare && last->vdev_isspare &&
			    FUNC1(last, DTL_MISSING) &&
			    FUNC1(last, DTL_OUTAGE) &&
			    !FUNC2(newvd))
				return (newvd);
		}
	}

	return (NULL);
}