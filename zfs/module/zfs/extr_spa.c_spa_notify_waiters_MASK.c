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
struct TYPE_3__ {int /*<<< orphan*/  spa_activities_lock; int /*<<< orphan*/  spa_activities_cv; } ;
typedef  TYPE_1__ spa_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(spa_t *spa)
{
	/*
	 * Acquiring spa_activities_lock here prevents the cv_broadcast from
	 * happening between the waiting thread's check and cv_wait.
	 */
	FUNC1(&spa->spa_activities_lock);
	FUNC0(&spa->spa_activities_cv);
	FUNC2(&spa->spa_activities_lock);
}