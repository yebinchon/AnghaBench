#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_7__ {scalar_t__ spa_state; int /*<<< orphan*/ * spa_pending_vdev; int /*<<< orphan*/ * spa_root_vdev; } ;
typedef  TYPE_1__ spa_t ;
typedef  int /*<<< orphan*/  avl_tree_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ POOL_STATE_UNINITIALIZED ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  spa_namespace_avl ; 
 int /*<<< orphan*/  spa_namespace_lock ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 

spa_t *
FUNC6(uint64_t pool_guid, uint64_t device_guid)
{
	spa_t *spa;
	avl_tree_t *t = &spa_namespace_avl;

	FUNC0(FUNC2(&spa_namespace_lock));

	for (spa = FUNC3(t); spa != NULL; spa = FUNC1(t, spa)) {
		if (spa->spa_state == POOL_STATE_UNINITIALIZED)
			continue;
		if (spa->spa_root_vdev == NULL)
			continue;
		if (FUNC4(spa) == pool_guid) {
			if (device_guid == 0)
				break;

			if (FUNC5(spa->spa_root_vdev,
			    device_guid) != NULL)
				break;

			/*
			 * Check any devices we may be in the process of adding.
			 */
			if (spa->spa_pending_vdev) {
				if (FUNC5(spa->spa_pending_vdev,
				    device_guid) != NULL)
					break;
			}
		}
	}

	return (spa);
}