#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  vdev_state_dirty_node; TYPE_2__* vdev_spa; } ;
typedef  TYPE_1__ vdev_t ;
struct TYPE_8__ {int /*<<< orphan*/  spa_state_dirty_list; } ;
typedef  TYPE_2__ spa_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  RW_READER ; 
 int /*<<< orphan*/  RW_WRITER ; 
 int /*<<< orphan*/  SCL_STATE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

void
FUNC6(vdev_t *vd)
{
	spa_t *spa = vd->vdev_spa;

	FUNC0(FUNC4(spa, SCL_STATE, RW_WRITER) ||
	    (FUNC1(FUNC5(spa)) &&
	    FUNC4(spa, SCL_STATE, RW_READER)));

	FUNC0(FUNC2(&vd->vdev_state_dirty_node));
	FUNC3(&spa->spa_state_dirty_list, vd);
}