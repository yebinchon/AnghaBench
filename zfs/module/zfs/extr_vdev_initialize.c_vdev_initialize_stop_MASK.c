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
struct TYPE_9__ {int /*<<< orphan*/  vdev_initialize_exit_wanted; int /*<<< orphan*/ * vdev_initialize_thread; TYPE_1__* vdev_ops; int /*<<< orphan*/  vdev_initialize_lock; int /*<<< orphan*/  vdev_spa; } ;
typedef  TYPE_2__ vdev_t ;
typedef  scalar_t__ vdev_initializing_state_t ;
typedef  int /*<<< orphan*/  list_t ;
struct TYPE_8__ {int vdev_op_leaf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  B_TRUE ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RW_WRITER ; 
 int SCL_CONFIG ; 
 int SCL_STATE ; 
 scalar_t__ VDEV_INITIALIZE_CANCELED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  spa_namespace_lock ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int FUNC6 (TYPE_2__*) ; 

void
FUNC7(vdev_t *vd, vdev_initializing_state_t tgt_state,
    list_t *vd_list)
{
	FUNC0(!FUNC3(vd->vdev_spa, SCL_CONFIG|SCL_STATE, RW_WRITER));
	FUNC0(FUNC1(&vd->vdev_initialize_lock));
	FUNC0(vd->vdev_ops->vdev_op_leaf);
	FUNC0(FUNC6(vd));

	/*
	 * Allow cancel requests to proceed even if the initialize thread
	 * has stopped.
	 */
	if (vd->vdev_initialize_thread == NULL &&
	    tgt_state != VDEV_INITIALIZE_CANCELED) {
		return;
	}

	FUNC4(vd, tgt_state);
	vd->vdev_initialize_exit_wanted = B_TRUE;

	if (vd_list == NULL) {
		FUNC5(vd);
	} else {
		FUNC0(FUNC1(&spa_namespace_lock));
		FUNC2(vd_list, vd);
	}
}