#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int tq_nthreads; scalar_t__ tq_nalloc; int /*<<< orphan*/  tq_maxalloc_cv; int /*<<< orphan*/  tq_wait_cv; int /*<<< orphan*/  tq_dispatch_cv; int /*<<< orphan*/  tq_lock; int /*<<< orphan*/  tq_threadlock; struct TYPE_7__* tq_threadlist; int /*<<< orphan*/ * tq_freelist; scalar_t__ tq_minalloc; int /*<<< orphan*/  tq_flags; } ;
typedef  TYPE_1__ taskq_t ;
typedef  int /*<<< orphan*/  kthread_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  TASKQ_ACTIVE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 

void
FUNC12(taskq_t *tq)
{
	int nthreads = tq->tq_nthreads;

	FUNC11(tq);

	FUNC6(&tq->tq_lock);

	tq->tq_flags &= ~TASKQ_ACTIVE;
	FUNC1(&tq->tq_dispatch_cv);

	while (tq->tq_nthreads != 0)
		FUNC3(&tq->tq_wait_cv, &tq->tq_lock);

	tq->tq_minalloc = 0;
	while (tq->tq_nalloc != 0) {
		FUNC0(tq->tq_freelist != NULL);
		FUNC10(tq, FUNC9(tq, KM_SLEEP));
	}

	FUNC7(&tq->tq_lock);

	FUNC4(tq->tq_threadlist, nthreads * sizeof (kthread_t *));

	FUNC8(&tq->tq_threadlock);
	FUNC5(&tq->tq_lock);
	FUNC2(&tq->tq_dispatch_cv);
	FUNC2(&tq->tq_wait_cv);
	FUNC2(&tq->tq_maxalloc_cv);

	FUNC4(tq, sizeof (taskq_t));
}