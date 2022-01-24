#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ tq_nalloc; scalar_t__ tq_minalloc; int /*<<< orphan*/  tq_free_list; int /*<<< orphan*/  tqent_list; scalar_t__ tqent_flags; int /*<<< orphan*/ * tqent_arg; int /*<<< orphan*/ * tqent_func; int /*<<< orphan*/  tqent_id; int /*<<< orphan*/  tqent_waitq; } ;
typedef  TYPE_1__ taskq_t ;
typedef  TYPE_1__ taskq_ent_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  TASKQID_INVALID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(taskq_t *tq, taskq_ent_t *t)
{
	FUNC0(tq);
	FUNC0(t);

	/* Wake tasks blocked in taskq_wait_id() */
	FUNC4(&t->tqent_waitq);

	FUNC2(&t->tqent_list);

	if (tq->tq_nalloc <= tq->tq_minalloc) {
		t->tqent_id = TASKQID_INVALID;
		t->tqent_func = NULL;
		t->tqent_arg = NULL;
		t->tqent_flags = 0;

		FUNC1(&t->tqent_list, &tq->tq_free_list);
	} else {
		FUNC3(tq, t);
	}
}