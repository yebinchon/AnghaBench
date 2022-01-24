#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int vdev_children; TYPE_1__* vdev_ops; struct TYPE_6__** vdev_child; int /*<<< orphan*/  vdev_spa; } ;
typedef  TYPE_2__ vdev_t ;
struct TYPE_5__ {int /*<<< orphan*/  (* vdev_op_rele ) (TYPE_2__*) ;scalar_t__ vdev_op_leaf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

void
FUNC3(vdev_t *vd)
{
	FUNC0(FUNC1(vd->vdev_spa));
	for (int c = 0; c < vd->vdev_children; c++)
		FUNC3(vd->vdev_child[c]);

	if (vd->vdev_ops->vdev_op_leaf)
		vd->vdev_ops->vdev_op_rele(vd);
}