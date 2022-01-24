#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_1__* vdev_ops; } ;
typedef  TYPE_2__ vdev_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_12__ {TYPE_2__* spa_root_vdev; int /*<<< orphan*/  spa_activities_lock; } ;
typedef  TYPE_3__ spa_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_10__ {int /*<<< orphan*/  vdev_op_leaf; } ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int EINVAL ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  RW_READER ; 
 int SCL_CONFIG ; 
 int SCL_STATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static int
FUNC6(spa_t *spa, boolean_t use_guid, uint64_t guid,
    boolean_t *in_progress)
{
	FUNC1(&spa->spa_activities_lock);
	FUNC2(spa, SCL_CONFIG | SCL_STATE, FTAG, RW_READER);
	FUNC0(&spa->spa_activities_lock);

	vdev_t *vd;
	if (use_guid) {
		vd = FUNC4(spa, guid, B_FALSE);
		if (vd == NULL || !vd->vdev_ops->vdev_op_leaf) {
			FUNC3(spa, SCL_CONFIG | SCL_STATE, FTAG);
			return (EINVAL);
		}
	} else {
		vd = spa->spa_root_vdev;
	}

	*in_progress = FUNC5(vd);

	FUNC3(spa, SCL_CONFIG | SCL_STATE, FTAG);
	return (0);
}