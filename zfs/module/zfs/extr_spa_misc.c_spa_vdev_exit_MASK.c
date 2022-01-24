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
typedef  int /*<<< orphan*/  vdev_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_5__ {int /*<<< orphan*/  spa_vdev_top_lock; } ;
typedef  TYPE_1__ spa_t ;

/* Variables and functions */
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  spa_namespace_lock ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

int
FUNC3(spa_t *spa, vdev_t *vd, uint64_t txg, int error)
{
	FUNC2(spa);

	FUNC1(spa, vd, txg, error, FTAG);
	FUNC0(&spa_namespace_lock);
	FUNC0(&spa->spa_vdev_top_lock);

	return (error);
}