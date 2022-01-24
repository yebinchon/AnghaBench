#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  vdev_dtl_lock; TYPE_3__* vdev_spa; int /*<<< orphan*/ ** vdev_dtl; } ;
typedef  TYPE_1__ vdev_t ;
typedef  size_t vdev_dtl_type_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  range_tree_t ;
struct TYPE_5__ {TYPE_1__* spa_root_vdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t DTL_TYPES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_3__*) ; 

void
FUNC6(vdev_t *vd, vdev_dtl_type_t t, uint64_t txg, uint64_t size)
{
	range_tree_t *rt = vd->vdev_dtl[t];

	FUNC0(t < DTL_TYPES);
	FUNC0(vd != vd->vdev_spa->spa_root_vdev);
	FUNC0(FUNC5(vd->vdev_spa));

	FUNC1(&vd->vdev_dtl_lock);
	if (!FUNC4(rt, txg, size))
		FUNC3(rt, txg, size);
	FUNC2(&vd->vdev_dtl_lock);
}