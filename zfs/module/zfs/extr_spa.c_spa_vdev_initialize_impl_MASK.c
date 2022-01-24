#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ vdev_initialize_state; int /*<<< orphan*/  vdev_initialize_lock; TYPE_2__* vdev_top; int /*<<< orphan*/ * vdev_initialize_thread; TYPE_1__* vdev_ops; scalar_t__ vdev_detached; } ;
typedef  TYPE_3__ vdev_t ;
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  spa_t ;
typedef  int /*<<< orphan*/  list_t ;
struct TYPE_10__ {scalar_t__ vdev_removing; } ;
struct TYPE_9__ {int /*<<< orphan*/  vdev_op_leaf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  EBUSY ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  EROFS ; 
 int /*<<< orphan*/  ESRCH ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
#define  POOL_INITIALIZE_CANCEL 130 
#define  POOL_INITIALIZE_START 129 
#define  POOL_INITIALIZE_SUSPEND 128 
 int /*<<< orphan*/  RW_READER ; 
 int SCL_CONFIG ; 
 int SCL_STATE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ VDEV_INITIALIZE_ACTIVE ; 
 scalar_t__ VDEV_INITIALIZE_CANCELED ; 
 scalar_t__ VDEV_INITIALIZE_SUSPENDED ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  spa_namespace_lock ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 

__attribute__((used)) static int
FUNC13(spa_t *spa, uint64_t guid, uint64_t cmd_type,
    list_t *vd_list)
{
	FUNC0(FUNC1(&spa_namespace_lock));

	FUNC6(spa, SCL_CONFIG | SCL_STATE, FTAG, RW_READER);

	/* Look up vdev and ensure it's a leaf. */
	vdev_t *vd = FUNC8(spa, guid, B_FALSE);
	if (vd == NULL || vd->vdev_detached) {
		FUNC7(spa, SCL_CONFIG | SCL_STATE, FTAG);
		return (FUNC2(ENODEV));
	} else if (!vd->vdev_ops->vdev_op_leaf || !FUNC11(vd)) {
		FUNC7(spa, SCL_CONFIG | SCL_STATE, FTAG);
		return (FUNC2(EINVAL));
	} else if (!FUNC12(vd)) {
		FUNC7(spa, SCL_CONFIG | SCL_STATE, FTAG);
		return (FUNC2(EROFS));
	}
	FUNC3(&vd->vdev_initialize_lock);
	FUNC7(spa, SCL_CONFIG | SCL_STATE, FTAG);

	/*
	 * When we activate an initialize action we check to see
	 * if the vdev_initialize_thread is NULL. We do this instead
	 * of using the vdev_initialize_state since there might be
	 * a previous initialization process which has completed but
	 * the thread is not exited.
	 */
	if (cmd_type == POOL_INITIALIZE_START &&
	    (vd->vdev_initialize_thread != NULL ||
	    vd->vdev_top->vdev_removing)) {
		FUNC4(&vd->vdev_initialize_lock);
		return (FUNC2(EBUSY));
	} else if (cmd_type == POOL_INITIALIZE_CANCEL &&
	    (vd->vdev_initialize_state != VDEV_INITIALIZE_ACTIVE &&
	    vd->vdev_initialize_state != VDEV_INITIALIZE_SUSPENDED)) {
		FUNC4(&vd->vdev_initialize_lock);
		return (FUNC2(ESRCH));
	} else if (cmd_type == POOL_INITIALIZE_SUSPEND &&
	    vd->vdev_initialize_state != VDEV_INITIALIZE_ACTIVE) {
		FUNC4(&vd->vdev_initialize_lock);
		return (FUNC2(ESRCH));
	}

	switch (cmd_type) {
	case POOL_INITIALIZE_START:
		FUNC9(vd);
		break;
	case POOL_INITIALIZE_CANCEL:
		FUNC10(vd, VDEV_INITIALIZE_CANCELED, vd_list);
		break;
	case POOL_INITIALIZE_SUSPEND:
		FUNC10(vd, VDEV_INITIALIZE_SUSPENDED, vd_list);
		break;
	default:
		FUNC5("invalid cmd_type %llu", (unsigned long long)cmd_type);
	}
	FUNC4(&vd->vdev_initialize_lock);

	return (0);
}