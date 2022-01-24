#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* spa_dsl_pool; } ;
typedef  TYPE_2__ spa_t ;
typedef  int boolean_t ;
struct TYPE_4__ {int /*<<< orphan*/  dp_early_sync_tasks; int /*<<< orphan*/  dp_sync_tasks; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

boolean_t
FUNC1(spa_t *spa)
{
	return (!FUNC0(&spa->spa_dsl_pool->dp_sync_tasks) ||
	    !FUNC0(&spa->spa_dsl_pool->dp_early_sync_tasks));
}