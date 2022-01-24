#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {size_t vdev_children; int /*<<< orphan*/  vdev_spa; TYPE_1__* vdev_ops; struct TYPE_9__** vdev_child; } ;
typedef  TYPE_2__ vdev_t ;
typedef  size_t uint64_t ;
struct TYPE_8__ {scalar_t__ vdev_op_leaf; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESC_ZFS_VDEV_CHECK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static void
FUNC4(vdev_t *vd)
{
	for (uint64_t c = 0; c < vd->vdev_children; c++)
		FUNC4(vd->vdev_child[c]);

	if (vd->vdev_ops->vdev_op_leaf && FUNC2(vd) &&
	    FUNC1(vd)) {
		FUNC3(vd->vdev_spa, vd);
		FUNC0(vd->vdev_spa, vd, NULL, ESC_ZFS_VDEV_CHECK);
	}
}