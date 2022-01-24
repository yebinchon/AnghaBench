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
struct TYPE_3__ {scalar_t__ spa_waiters; int /*<<< orphan*/  spa_activities_lock; int /*<<< orphan*/  spa_waiters_cancel; int /*<<< orphan*/  spa_waiters_cv; int /*<<< orphan*/  spa_activities_cv; } ;
typedef  TYPE_1__ spa_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(spa_t *spa)
{
	FUNC2(&spa->spa_activities_lock);
	spa->spa_waiters_cancel = B_TRUE;
	FUNC0(&spa->spa_activities_cv);
	while (spa->spa_waiters != 0)
		FUNC1(&spa->spa_waiters_cv, &spa->spa_activities_lock);
	spa->spa_waiters_cancel = B_FALSE;
	FUNC3(&spa->spa_activities_lock);
}