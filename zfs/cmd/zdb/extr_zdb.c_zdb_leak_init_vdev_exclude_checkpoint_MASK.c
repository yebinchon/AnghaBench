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
struct TYPE_7__ {int /*<<< orphan*/  zcb_checkpoint_size; } ;
typedef  TYPE_1__ zdb_cb_t ;
struct TYPE_8__ {int /*<<< orphan*/  vdev_ashift; int /*<<< orphan*/  vdev_asize; int /*<<< orphan*/  vdev_top_zap; int /*<<< orphan*/ * vdev_spa; } ;
typedef  TYPE_2__ vdev_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  space_map_t ;
typedef  int /*<<< orphan*/  spa_t ;
struct TYPE_9__ {scalar_t__ cseea_checkpoint_size; TYPE_2__* cseea_vd; } ;
typedef  TYPE_3__ checkpoint_sm_exclude_entry_arg_t ;

/* Variables and functions */
 int /*<<< orphan*/  VDEV_TOP_ZAP_POOL_CHECKPOINT_SM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  checkpoint_sm_exclude_entry_cb ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(vdev_t *vd, zdb_cb_t *zcb)
{
	spa_t *spa = vd->vdev_spa;
	space_map_t *checkpoint_sm = NULL;
	uint64_t checkpoint_sm_obj;

	/*
	 * If there is no vdev_top_zap, we are in a pool whose
	 * version predates the pool checkpoint feature.
	 */
	if (vd->vdev_top_zap == 0)
		return;

	/*
	 * If there is no reference of the vdev_checkpoint_sm in
	 * the vdev_top_zap, then one of the following scenarios
	 * is true:
	 *
	 * 1] There is no checkpoint
	 * 2] There is a checkpoint, but no checkpointed blocks
	 *    have been freed yet
	 * 3] The current vdev is indirect
	 *
	 * In these cases we return immediately.
	 */
	if (FUNC6(FUNC1(spa), vd->vdev_top_zap,
	    VDEV_TOP_ZAP_POOL_CHECKPOINT_SM) != 0)
		return;

	FUNC0(FUNC7(FUNC1(spa), vd->vdev_top_zap,
	    VDEV_TOP_ZAP_POOL_CHECKPOINT_SM, sizeof (uint64_t), 1,
	    &checkpoint_sm_obj));

	checkpoint_sm_exclude_entry_arg_t cseea;
	cseea.cseea_vd = vd;
	cseea.cseea_checkpoint_size = 0;

	FUNC0(FUNC5(&checkpoint_sm, FUNC1(spa),
	    checkpoint_sm_obj, 0, vd->vdev_asize, vd->vdev_ashift));

	FUNC0(FUNC3(checkpoint_sm,
	    FUNC4(checkpoint_sm),
	    checkpoint_sm_exclude_entry_cb, &cseea));
	FUNC2(checkpoint_sm);

	zcb->zcb_checkpoint_size += cseea.cseea_checkpoint_size;
}