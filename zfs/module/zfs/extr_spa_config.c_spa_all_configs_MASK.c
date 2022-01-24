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
typedef  scalar_t__ uint64_t ;
struct TYPE_5__ {int /*<<< orphan*/  spa_props_lock; int /*<<< orphan*/  spa_config; } ;
typedef  TYPE_1__ spa_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  curproc ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ spa_config_generation ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  spa_namespace_lock ; 
 TYPE_1__* FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

nvlist_t *
FUNC8(uint64_t *generation)
{
	nvlist_t *pools;
	spa_t *spa = NULL;

	if (*generation == spa_config_generation)
		return (NULL);

	pools = FUNC2();

	FUNC3(&spa_namespace_lock);
	while ((spa = FUNC6(spa)) != NULL) {
		if (FUNC0(curproc) ||
		    FUNC7(FUNC5(spa), NULL)) {
			FUNC3(&spa->spa_props_lock);
			FUNC1(pools, FUNC5(spa),
			    spa->spa_config);
			FUNC4(&spa->spa_props_lock);
		}
	}
	*generation = spa_config_generation;
	FUNC4(&spa_namespace_lock);

	return (pools);
}