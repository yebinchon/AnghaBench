#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {TYPE_2__* vdev_spa; int /*<<< orphan*/  vdev_id; } ;
typedef  TYPE_1__ vdev_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_13__ {TYPE_1__* spa_root_vdev; } ;
typedef  TYPE_2__ spa_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RW_WRITER ; 
 scalar_t__ SCL_ALL ; 
 scalar_t__ FUNC2 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  spa_namespace_lock ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_1__*) ; 
 TYPE_1__* FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  vdev_hole_ops ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC8(vdev_t *vd)
{
	uint64_t id = vd->vdev_id;
	spa_t *spa = vd->vdev_spa;
	vdev_t *rvd = spa->spa_root_vdev;

	FUNC0(FUNC1(&spa_namespace_lock));
	FUNC0(FUNC2(spa, SCL_ALL, RW_WRITER) == SCL_ALL);

	FUNC6(vd);

	vd = FUNC4(spa, id, 0, &vdev_hole_ops);
	FUNC3(rvd, vd);
	FUNC5(rvd);

	/*
	 * Reassess the health of our root vdev.
	 */
	FUNC7(rvd);
}