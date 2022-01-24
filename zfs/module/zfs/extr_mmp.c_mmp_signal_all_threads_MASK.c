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
struct TYPE_5__ {scalar_t__ spa_state; } ;
typedef  TYPE_1__ spa_t ;

/* Variables and functions */
 scalar_t__ POOL_STATE_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  spa_namespace_lock ; 
 TYPE_1__* FUNC3 (TYPE_1__*) ; 

void
FUNC4(void)
{
	spa_t *spa = NULL;

	FUNC1(&spa_namespace_lock);
	while ((spa = FUNC3(spa))) {
		if (spa->spa_state == POOL_STATE_ACTIVE)
			FUNC0(spa);
	}
	FUNC2(&spa_namespace_lock);
}