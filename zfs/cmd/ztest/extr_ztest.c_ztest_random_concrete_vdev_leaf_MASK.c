#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int vdev_children; int /*<<< orphan*/  vdev_detached; TYPE_1__* vdev_top; struct TYPE_7__** vdev_child; } ;
typedef  TYPE_2__ vdev_t ;
typedef  size_t uint64_t ;
struct TYPE_6__ {scalar_t__ vdev_removing; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 size_t FUNC2 (int) ; 

__attribute__((used)) static vdev_t *
FUNC3(vdev_t *vd)
{
	if (vd == NULL)
		return (NULL);

	if (vd->vdev_children == 0)
		return (vd);

	vdev_t *eligible[vd->vdev_children];
	int eligible_idx = 0, i;
	for (i = 0; i < vd->vdev_children; i++) {
		vdev_t *cvd = vd->vdev_child[i];
		if (cvd->vdev_top->vdev_removing)
			continue;
		if (cvd->vdev_children > 0 ||
		    (FUNC1(cvd) && !cvd->vdev_detached)) {
			eligible[eligible_idx++] = cvd;
		}
	}
	FUNC0(eligible_idx > 0);

	uint64_t child_no = FUNC2(eligible_idx);
	return (FUNC3(eligible[child_no]));
}