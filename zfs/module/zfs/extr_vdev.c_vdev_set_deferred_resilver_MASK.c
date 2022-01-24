#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {size_t vdev_children; void* vdev_resilver_deferred; int /*<<< orphan*/ * vdev_dtl; TYPE_1__* vdev_ops; struct TYPE_8__** vdev_child; } ;
typedef  TYPE_2__ vdev_t ;
typedef  size_t uint64_t ;
struct TYPE_9__ {void* spa_resilver_deferred; } ;
typedef  TYPE_3__ spa_t ;
struct TYPE_7__ {int /*<<< orphan*/  vdev_op_leaf; } ;

/* Variables and functions */
 void* B_TRUE ; 
 size_t DTL_MISSING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

void
FUNC2(spa_t *spa, vdev_t *vd)
{
	for (uint64_t i = 0; i < vd->vdev_children; i++)
		FUNC2(spa, vd->vdev_child[i]);

	if (!vd->vdev_ops->vdev_op_leaf || !FUNC1(vd) ||
	    FUNC0(vd->vdev_dtl[DTL_MISSING])) {
		return;
	}

	vd->vdev_resilver_deferred = B_TRUE;
	spa->spa_resilver_deferred = B_TRUE;
}