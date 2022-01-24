#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vdev_t ;
struct TYPE_6__ {int /*<<< orphan*/ * spa_root_vdev; } ;
typedef  TYPE_1__ spa_t ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  VDEV_AUX_CORRUPT_DATA ; 
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int) ; 
 int FUNC2 (TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(spa_t *spa)
{
	int error = 0;
	vdev_t *rvd = spa->spa_root_vdev;

	/*
	 * Everything that we read before spa_remove_init() must be stored
	 * on concreted vdevs.  Therefore we do this as early as possible.
	 */
	error = FUNC2(spa);
	if (error != 0) {
		FUNC1(spa, "spa_remove_init failed [error=%d]",
		    error);
		return (FUNC3(rvd, VDEV_AUX_CORRUPT_DATA, EIO));
	}

	/*
	 * Retrieve information needed to condense indirect vdev mappings.
	 */
	error = FUNC0(spa);
	if (error != 0) {
		FUNC1(spa, "spa_condense_init failed [error=%d]",
		    error);
		return (FUNC3(rvd, VDEV_AUX_CORRUPT_DATA, error));
	}

	return (0);
}