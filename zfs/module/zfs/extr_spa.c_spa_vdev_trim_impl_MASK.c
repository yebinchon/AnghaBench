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
struct TYPE_11__ {scalar_t__ vdev_trim_state; int /*<<< orphan*/  vdev_trim_lock; TYPE_2__* vdev_top; int /*<<< orphan*/ * vdev_trim_thread; int /*<<< orphan*/  vdev_has_securetrim; int /*<<< orphan*/  vdev_has_trim; TYPE_1__* vdev_ops; scalar_t__ vdev_detached; } ;
typedef  TYPE_3__ vdev_t ;
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  spa_t ;
typedef  int /*<<< orphan*/  list_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_10__ {scalar_t__ vdev_removing; } ;
struct TYPE_9__ {int /*<<< orphan*/  vdev_op_leaf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  EBUSY ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  EOPNOTSUPP ; 
 int /*<<< orphan*/  EROFS ; 
 int /*<<< orphan*/  ESRCH ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
#define  POOL_TRIM_CANCEL 130 
#define  POOL_TRIM_START 129 
#define  POOL_TRIM_SUSPEND 128 
 int /*<<< orphan*/  RW_READER ; 
 int SCL_CONFIG ; 
 int SCL_STATE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ VDEV_TRIM_ACTIVE ; 
 scalar_t__ VDEV_TRIM_CANCELED ; 
 scalar_t__ VDEV_TRIM_SUSPENDED ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  spa_namespace_lock ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 

__attribute__((used)) static int
FUNC13(spa_t *spa, uint64_t guid, uint64_t cmd_type,
    uint64_t rate, boolean_t partial, boolean_t secure, list_t *vd_list)
{
	FUNC0(FUNC1(&spa_namespace_lock));

	FUNC6(spa, SCL_CONFIG | SCL_STATE, FTAG, RW_READER);

	/* Look up vdev and ensure it's a leaf. */
	vdev_t *vd = FUNC8(spa, guid, B_FALSE);
	if (vd == NULL || vd->vdev_detached) {
		FUNC7(spa, SCL_CONFIG | SCL_STATE, FTAG);
		return (FUNC2(ENODEV));
	} else if (!vd->vdev_ops->vdev_op_leaf || !FUNC9(vd)) {
		FUNC7(spa, SCL_CONFIG | SCL_STATE, FTAG);
		return (FUNC2(EINVAL));
	} else if (!FUNC12(vd)) {
		FUNC7(spa, SCL_CONFIG | SCL_STATE, FTAG);
		return (FUNC2(EROFS));
	} else if (!vd->vdev_has_trim) {
		FUNC7(spa, SCL_CONFIG | SCL_STATE, FTAG);
		return (FUNC2(EOPNOTSUPP));
	} else if (secure && !vd->vdev_has_securetrim) {
		FUNC7(spa, SCL_CONFIG | SCL_STATE, FTAG);
		return (FUNC2(EOPNOTSUPP));
	}
	FUNC3(&vd->vdev_trim_lock);
	FUNC7(spa, SCL_CONFIG | SCL_STATE, FTAG);

	/*
	 * When we activate a TRIM action we check to see if the
	 * vdev_trim_thread is NULL. We do this instead of using the
	 * vdev_trim_state since there might be a previous TRIM process
	 * which has completed but the thread is not exited.
	 */
	if (cmd_type == POOL_TRIM_START &&
	    (vd->vdev_trim_thread != NULL || vd->vdev_top->vdev_removing)) {
		FUNC4(&vd->vdev_trim_lock);
		return (FUNC2(EBUSY));
	} else if (cmd_type == POOL_TRIM_CANCEL &&
	    (vd->vdev_trim_state != VDEV_TRIM_ACTIVE &&
	    vd->vdev_trim_state != VDEV_TRIM_SUSPENDED)) {
		FUNC4(&vd->vdev_trim_lock);
		return (FUNC2(ESRCH));
	} else if (cmd_type == POOL_TRIM_SUSPEND &&
	    vd->vdev_trim_state != VDEV_TRIM_ACTIVE) {
		FUNC4(&vd->vdev_trim_lock);
		return (FUNC2(ESRCH));
	}

	switch (cmd_type) {
	case POOL_TRIM_START:
		FUNC10(vd, rate, partial, secure);
		break;
	case POOL_TRIM_CANCEL:
		FUNC11(vd, VDEV_TRIM_CANCELED, vd_list);
		break;
	case POOL_TRIM_SUSPEND:
		FUNC11(vd, VDEV_TRIM_SUSPENDED, vd_list);
		break;
	default:
		FUNC5("invalid cmd_type %llu", (unsigned long long)cmd_type);
	}
	FUNC4(&vd->vdev_trim_lock);

	return (0);
}