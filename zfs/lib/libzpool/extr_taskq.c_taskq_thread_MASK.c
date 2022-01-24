#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int tqent_flags; int /*<<< orphan*/  tqent_arg; int /*<<< orphan*/  (* tqent_func ) (int /*<<< orphan*/ ) ;TYPE_1__* tqent_prev; struct TYPE_8__* tqent_next; } ;
struct TYPE_7__ {int tq_flags; scalar_t__ tq_active; int /*<<< orphan*/  tq_lock; int /*<<< orphan*/  tq_wait_cv; int /*<<< orphan*/  tq_nthreads; int /*<<< orphan*/  tq_threadlock; int /*<<< orphan*/  tq_dispatch_cv; TYPE_3__ tq_task; } ;
typedef  TYPE_2__ taskq_t ;
typedef  TYPE_3__ taskq_ent_t ;
typedef  int boolean_t ;
struct TYPE_6__ {TYPE_3__* tqent_next; } ;

/* Variables and functions */
 int /*<<< orphan*/  RW_READER ; 
 int TASKQ_ACTIVE ; 
 int TQENT_FLAG_PREALLOC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static void
FUNC9(void *arg)
{
	taskq_t *tq = arg;
	taskq_ent_t *t;
	boolean_t prealloc;

	FUNC2(&tq->tq_lock);
	while (tq->tq_flags & TASKQ_ACTIVE) {
		if ((t = tq->tq_task.tqent_next) == &tq->tq_task) {
			if (--tq->tq_active == 0)
				FUNC0(&tq->tq_wait_cv);
			FUNC1(&tq->tq_dispatch_cv, &tq->tq_lock);
			tq->tq_active++;
			continue;
		}
		t->tqent_prev->tqent_next = t->tqent_next;
		t->tqent_next->tqent_prev = t->tqent_prev;
		t->tqent_next = NULL;
		t->tqent_prev = NULL;
		prealloc = t->tqent_flags & TQENT_FLAG_PREALLOC;
		FUNC3(&tq->tq_lock);

		FUNC4(&tq->tq_threadlock, RW_READER);
		t->tqent_func(t->tqent_arg);
		FUNC5(&tq->tq_threadlock);

		FUNC2(&tq->tq_lock);
		if (!prealloc)
			FUNC7(tq, t);
	}
	tq->tq_nthreads--;
	FUNC0(&tq->tq_wait_cv);
	FUNC3(&tq->tq_lock);
	FUNC8();
}