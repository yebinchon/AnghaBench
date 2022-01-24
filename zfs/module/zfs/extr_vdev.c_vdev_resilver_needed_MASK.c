#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ vdev_children; struct TYPE_6__** vdev_child; int /*<<< orphan*/  vdev_dtl_lock; int /*<<< orphan*/ * vdev_dtl; } ;
typedef  TYPE_1__ vdev_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ B_FALSE ; 
 scalar_t__ B_TRUE ; 
 size_t DTL_MISSING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UINT64_MAX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 

boolean_t
FUNC8(vdev_t *vd, uint64_t *minp, uint64_t *maxp)
{
	boolean_t needed = B_FALSE;
	uint64_t thismin = UINT64_MAX;
	uint64_t thismax = 0;

	if (vd->vdev_children == 0) {
		FUNC2(&vd->vdev_dtl_lock);
		if (!FUNC4(vd->vdev_dtl[DTL_MISSING]) &&
		    FUNC7(vd)) {

			thismin = FUNC6(vd);
			thismax = FUNC5(vd);
			needed = B_TRUE;
		}
		FUNC3(&vd->vdev_dtl_lock);
	} else {
		for (int c = 0; c < vd->vdev_children; c++) {
			vdev_t *cvd = vd->vdev_child[c];
			uint64_t cmin, cmax;

			if (FUNC8(cvd, &cmin, &cmax)) {
				thismin = FUNC1(thismin, cmin);
				thismax = FUNC0(thismax, cmax);
				needed = B_TRUE;
			}
		}
	}

	if (needed && minp) {
		*minp = thismin;
		*maxp = thismax;
	}
	return (needed);
}