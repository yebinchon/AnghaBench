#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {unsigned long long vdev_degraded; scalar_t__ vdev_faulted; TYPE_1__* vdev_ops; } ;
typedef  TYPE_2__ vdev_t ;
typedef  int /*<<< orphan*/  vdev_aux_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  spa_t ;
struct TYPE_7__ {int /*<<< orphan*/  vdev_op_leaf; } ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  ENOTSUP ; 
 int /*<<< orphan*/  SCL_NONE ; 
 int /*<<< orphan*/  VDEV_STATE_DEGRADED ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC5(spa_t *spa, uint64_t guid, vdev_aux_t aux)
{
	vdev_t *vd;

	FUNC1(spa, SCL_NONE);

	if ((vd = FUNC0(spa, guid, B_TRUE)) == NULL)
		return (FUNC2(spa, NULL, ENODEV));

	if (!vd->vdev_ops->vdev_op_leaf)
		return (FUNC2(spa, NULL, ENOTSUP));

	/*
	 * If the vdev is already faulted, then don't do anything.
	 */
	if (vd->vdev_faulted || vd->vdev_degraded)
		return (FUNC2(spa, NULL, 0));

	vd->vdev_degraded = 1ULL;
	if (!FUNC3(vd))
		FUNC4(vd, B_FALSE, VDEV_STATE_DEGRADED,
		    aux);

	return (FUNC2(spa, vd, 0));
}