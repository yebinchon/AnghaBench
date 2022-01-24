#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vdev_t ;
typedef  size_t uint64_t ;
struct TYPE_10__ {TYPE_1__* spa_root_vdev; } ;
typedef  TYPE_2__ spa_t ;
struct TYPE_9__ {size_t vdev_children; int /*<<< orphan*/ ** vdev_child; } ;

/* Variables and functions */
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  RW_READER ; 
 int /*<<< orphan*/  SCL_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*) ; 
 int FUNC3 (TYPE_2__*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

int
FUNC6(spa_t *spa)
{
	int error;

	FUNC5(spa);

	for (uint64_t c = 0; c < spa->spa_root_vdev->vdev_children; c++) {
		vdev_t *vd = spa->spa_root_vdev->vdev_child[c];
		error = FUNC4(vd);
		if (error != 0)
			return (error);
	}

	error = FUNC3(spa);
	if (error != 0)
		return (error);

	/*
	 * Note: we don't actually expect anything to change at this point
	 * but we grab the config lock so we don't fail any assertions
	 * when using vdev_lookup_top().
	 */
	FUNC0(spa, SCL_CONFIG, FTAG, RW_READER);
	error = FUNC2(spa);
	FUNC1(spa, SCL_CONFIG, FTAG);

	return (error);
}