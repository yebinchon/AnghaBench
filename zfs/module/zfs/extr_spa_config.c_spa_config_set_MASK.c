#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  spa_props_lock; int /*<<< orphan*/ * spa_config; } ;
typedef  TYPE_1__ spa_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(spa_t *spa, nvlist_t *config)
{
	FUNC0(&spa->spa_props_lock);
	if (spa->spa_config != NULL && spa->spa_config != config)
		FUNC2(spa->spa_config);
	spa->spa_config = config;
	FUNC1(&spa->spa_props_lock);
}