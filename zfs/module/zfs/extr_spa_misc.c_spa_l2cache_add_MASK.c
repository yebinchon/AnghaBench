#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ vdev_isl2cache; } ;
typedef  TYPE_1__ vdev_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ B_TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  spa_l2cache_avl ; 
 int /*<<< orphan*/  spa_l2cache_lock ; 

void
FUNC4(vdev_t *vd)
{
	FUNC1(&spa_l2cache_lock);
	FUNC0(!vd->vdev_isl2cache);
	FUNC3(vd, &spa_l2cache_avl);
	vd->vdev_isl2cache = B_TRUE;
	FUNC2(&spa_l2cache_lock);
}