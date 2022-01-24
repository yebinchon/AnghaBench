#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_5__ {int /*<<< orphan*/  spa_vdev_top_lock; int /*<<< orphan*/  spa_name; } ;
typedef  TYPE_1__ spa_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  ESC_ZFS_POOL_REGUID ; 
 int /*<<< orphan*/  ZFS_SPACE_CHECK_RESERVED ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  spa_change_guid_check ; 
 int /*<<< orphan*/  spa_change_guid_sync ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  spa_namespace_lock ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC6(spa_t *spa)
{
	int error;
	uint64_t guid;

	FUNC1(&spa->spa_vdev_top_lock);
	FUNC1(&spa_namespace_lock);
	guid = FUNC4(NULL);

	error = FUNC0(spa->spa_name, spa_change_guid_check,
	    spa_change_guid_sync, &guid, 5, ZFS_SPACE_CHECK_RESERVED);

	if (error == 0) {
		FUNC5(spa, B_FALSE, B_TRUE);
		FUNC3(spa, NULL, NULL, ESC_ZFS_POOL_REGUID);
	}

	FUNC2(&spa_namespace_lock);
	FUNC2(&spa->spa_vdev_top_lock);

	return (error);
}