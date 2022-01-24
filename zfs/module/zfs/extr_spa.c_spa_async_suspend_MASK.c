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
typedef  int /*<<< orphan*/  zthr_t ;
struct TYPE_4__ {int /*<<< orphan*/ * spa_livelist_condense_zthr; int /*<<< orphan*/ * spa_livelist_delete_zthr; int /*<<< orphan*/ * spa_checkpoint_discard_zthr; int /*<<< orphan*/ * spa_condense_zthr; int /*<<< orphan*/  spa_async_lock; int /*<<< orphan*/  spa_async_cv; int /*<<< orphan*/ * spa_async_thread; int /*<<< orphan*/  spa_async_suspended; } ;
typedef  TYPE_1__ spa_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(spa_t *spa)
{
	FUNC1(&spa->spa_async_lock);
	spa->spa_async_suspended++;
	while (spa->spa_async_thread != NULL)
		FUNC0(&spa->spa_async_cv, &spa->spa_async_lock);
	FUNC2(&spa->spa_async_lock);

	FUNC3(spa);

	zthr_t *condense_thread = spa->spa_condense_zthr;
	if (condense_thread != NULL)
		FUNC4(condense_thread);

	zthr_t *discard_thread = spa->spa_checkpoint_discard_zthr;
	if (discard_thread != NULL)
		FUNC4(discard_thread);

	zthr_t *ll_delete_thread = spa->spa_livelist_delete_zthr;
	if (ll_delete_thread != NULL)
		FUNC4(ll_delete_thread);

	zthr_t *ll_condense_thread = spa->spa_livelist_condense_zthr;
	if (ll_condense_thread != NULL)
		FUNC4(ll_condense_thread);
}