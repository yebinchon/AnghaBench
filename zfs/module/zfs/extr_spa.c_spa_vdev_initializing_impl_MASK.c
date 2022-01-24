#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ vdev_initialize_state; int vdev_children; struct TYPE_5__** vdev_child; int /*<<< orphan*/  vdev_initialize_lock; TYPE_2__* vdev_spa; } ;
typedef  TYPE_1__ vdev_t ;
struct TYPE_6__ {int /*<<< orphan*/  spa_activities_lock; } ;
typedef  TYPE_2__ spa_t ;
typedef  int boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int B_FALSE ; 
 int B_TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RW_READER ; 
 int SCL_CONFIG ; 
 int SCL_STATE ; 
 scalar_t__ VDEV_INITIALIZE_ACTIVE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static boolean_t
FUNC5(vdev_t *vd)
{
	spa_t *spa = vd->vdev_spa;
	boolean_t initializing;

	FUNC0(FUNC4(spa, SCL_CONFIG | SCL_STATE, RW_READER));
	FUNC0(FUNC1(&spa->spa_activities_lock));

	FUNC3(&spa->spa_activities_lock);
	FUNC2(&vd->vdev_initialize_lock);
	FUNC2(&spa->spa_activities_lock);

	initializing = (vd->vdev_initialize_state == VDEV_INITIALIZE_ACTIVE);
	FUNC3(&vd->vdev_initialize_lock);

	if (initializing)
		return (B_TRUE);

	for (int i = 0; i < vd->vdev_children; i++) {
		if (FUNC5(vd->vdev_child[i]))
			return (B_TRUE);
	}

	return (B_FALSE);
}