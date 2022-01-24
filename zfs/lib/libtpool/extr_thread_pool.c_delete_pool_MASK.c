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
struct TYPE_8__ {scalar_t__ tp_current; int /*<<< orphan*/  tp_attr; struct TYPE_8__* tpj_next; struct TYPE_8__* tp_head; TYPE_1__* tp_back; struct TYPE_8__* tp_forw; int /*<<< orphan*/ * tp_active; } ;
typedef  TYPE_2__ tpool_t ;
typedef  TYPE_2__ tpool_job_t ;
struct TYPE_7__ {TYPE_2__* tp_forw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  thread_pool_lock ; 
 TYPE_2__* thread_pools ; 

__attribute__((used)) static void
FUNC5(tpool_t *tpool)
{
	tpool_job_t *job;

	FUNC0(tpool->tp_current == 0 && tpool->tp_active == NULL);

	/*
	 * Unlink the pool from the global list of all pools.
	 */
	(void) FUNC3(&thread_pool_lock);
	if (thread_pools == tpool)
		thread_pools = tpool->tp_forw;
	if (thread_pools == tpool)
		thread_pools = NULL;
	else {
		tpool->tp_back->tp_forw = tpool->tp_forw;
		tpool->tp_forw->tp_back = tpool->tp_back;
	}
	FUNC4(&thread_pool_lock);

	/*
	 * There should be no pending jobs, but just in case...
	 */
	for (job = tpool->tp_head; job != NULL; job = tpool->tp_head) {
		tpool->tp_head = job->tpj_next;
		FUNC1(job);
	}
	(void) FUNC2(&tpool->tp_attr);
	FUNC1(tpool);
}