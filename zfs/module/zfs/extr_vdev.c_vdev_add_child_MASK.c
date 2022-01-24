#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {size_t vdev_id; size_t vdev_children; TYPE_5__* vdev_spa; TYPE_1__* vdev_ops; scalar_t__ vdev_guid_sum; struct TYPE_12__* vdev_parent; struct TYPE_12__* vdev_top; struct TYPE_12__** vdev_child; } ;
typedef  TYPE_2__ vdev_t ;
typedef  size_t uint64_t ;
struct TYPE_13__ {int /*<<< orphan*/  spa_leaf_list_gen; int /*<<< orphan*/  spa_leaf_list; } ;
struct TYPE_11__ {scalar_t__ vdev_op_leaf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int FUNC1 (int,size_t) ; 
 int /*<<< orphan*/  RW_WRITER ; 
 scalar_t__ SCL_ALL ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__**,TYPE_2__**,size_t) ; 
 TYPE_2__** FUNC3 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__**,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 scalar_t__ FUNC6 (TYPE_5__*,scalar_t__,int /*<<< orphan*/ ) ; 

void
FUNC7(vdev_t *pvd, vdev_t *cvd)
{
	size_t oldsize, newsize;
	uint64_t id = cvd->vdev_id;
	vdev_t **newchild;

	FUNC0(FUNC6(cvd->vdev_spa, SCL_ALL, RW_WRITER) == SCL_ALL);
	FUNC0(cvd->vdev_parent == NULL);

	cvd->vdev_parent = pvd;

	if (pvd == NULL)
		return;

	FUNC0(id >= pvd->vdev_children || pvd->vdev_child[id] == NULL);

	oldsize = pvd->vdev_children * sizeof (vdev_t *);
	pvd->vdev_children = FUNC1(pvd->vdev_children, id + 1);
	newsize = pvd->vdev_children * sizeof (vdev_t *);

	newchild = FUNC3(newsize, KM_SLEEP);
	if (pvd->vdev_child != NULL) {
		FUNC2(pvd->vdev_child, newchild, oldsize);
		FUNC4(pvd->vdev_child, oldsize);
	}

	pvd->vdev_child = newchild;
	pvd->vdev_child[id] = cvd;

	cvd->vdev_top = (pvd->vdev_top ? pvd->vdev_top: cvd);
	FUNC0(cvd->vdev_top->vdev_parent->vdev_parent == NULL);

	/*
	 * Walk up all ancestors to update guid sum.
	 */
	for (; pvd != NULL; pvd = pvd->vdev_parent)
		pvd->vdev_guid_sum += cvd->vdev_guid_sum;

	if (cvd->vdev_ops->vdev_op_leaf) {
		FUNC5(&cvd->vdev_spa->spa_leaf_list, cvd);
		cvd->vdev_spa->spa_leaf_list_gen++;
	}
}