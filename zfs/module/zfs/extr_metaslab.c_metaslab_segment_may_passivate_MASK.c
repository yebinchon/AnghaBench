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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  spa_t ;
struct TYPE_9__ {int /*<<< orphan*/  ms_activation_weight; int /*<<< orphan*/  ms_weight; TYPE_2__* ms_group; } ;
typedef  TYPE_3__ metaslab_t ;
struct TYPE_8__ {TYPE_1__* mg_vd; } ;
struct TYPE_7__ {int /*<<< orphan*/ * vdev_spa; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int zfs_metaslab_switch_threshold ; 

void
FUNC5(metaslab_t *msp)
{
	spa_t *spa = msp->ms_group->mg_vd->vdev_spa;

	if (FUNC1(msp->ms_weight) || FUNC4(spa) > 1)
		return;

	/*
	 * Since we are in the middle of a sync pass, the most accurate
	 * information that is accessible to us is the in-core range tree
	 * histogram; calculate the new weight based on that information.
	 */
	uint64_t weight = FUNC3(msp);
	int activation_idx = FUNC0(msp->ms_activation_weight);
	int current_idx = FUNC0(weight);

	if (current_idx <= activation_idx - zfs_metaslab_switch_threshold)
		FUNC2(msp, weight);
}