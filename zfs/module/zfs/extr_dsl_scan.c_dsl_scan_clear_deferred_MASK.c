#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int vdev_children; int /*<<< orphan*/  vdev_offline; void* vdev_resilver_deferred; TYPE_1__* vdev_ops; scalar_t__ vdev_aux; struct TYPE_12__** vdev_child; TYPE_3__* vdev_spa; } ;
typedef  TYPE_2__ vdev_t ;
struct TYPE_13__ {void* spa_resilver_deferred; TYPE_2__* spa_root_vdev; } ;
typedef  TYPE_3__ spa_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
typedef  int boolean_t ;
struct TYPE_11__ {int /*<<< orphan*/  vdev_op_leaf; } ;

/* Variables and functions */
 void* B_FALSE ; 
 int /*<<< orphan*/  SPA_FEATURE_RESILVER_DEFER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static boolean_t
FUNC6(vdev_t *vd, dmu_tx_t *tx)
{
	boolean_t resilver_needed = B_FALSE;
	spa_t *spa = vd->vdev_spa;

	for (int c = 0; c < vd->vdev_children; c++) {
		resilver_needed |=
		    FUNC6(vd->vdev_child[c], tx);
	}

	if (vd == spa->spa_root_vdev &&
	    FUNC1(spa, SPA_FEATURE_RESILVER_DEFER)) {
		FUNC0(spa, SPA_FEATURE_RESILVER_DEFER, tx);
		FUNC2(vd);
		spa->spa_resilver_deferred = B_FALSE;
		return (resilver_needed);
	}

	if (!FUNC3(vd) || vd->vdev_aux ||
	    !vd->vdev_ops->vdev_op_leaf)
		return (resilver_needed);

	if (vd->vdev_resilver_deferred)
		vd->vdev_resilver_deferred = B_FALSE;

	return (!FUNC4(vd) && !vd->vdev_offline &&
	    FUNC5(vd, NULL, NULL));
}