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
typedef  int uint_t ;
typedef  int /*<<< orphan*/  taskq_thread_t ;
struct TYPE_8__ {int tq_nthreads; int tq_maxthreads; int tq_minalloc; int tq_maxalloc; int tq_flags; int /*<<< orphan*/  tq_taskqs; scalar_t__ tq_instance; scalar_t__ tq_nspawn; int /*<<< orphan*/  tq_wait_waitq; int /*<<< orphan*/  tq_lock; int /*<<< orphan*/  tq_lock_class; int /*<<< orphan*/  tq_work_waitq; int /*<<< orphan*/  tq_delay_list; int /*<<< orphan*/  tq_prio_list; int /*<<< orphan*/  tq_pend_list; int /*<<< orphan*/  tq_free_list; void* tq_lowest_id; void* tq_next_id; scalar_t__ tq_nalloc; int /*<<< orphan*/  tq_pri; scalar_t__ tq_nactive; int /*<<< orphan*/  tq_name; int /*<<< orphan*/  tq_active_list; int /*<<< orphan*/  tq_thread_list; } ;
typedef  TYPE_1__ taskq_t ;
typedef  int /*<<< orphan*/  pri_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int INT_MAX ; 
 int /*<<< orphan*/  KM_PUSHPAGE ; 
 int FUNC2 (int,int) ; 
 int FUNC3 (int,int) ; 
 void* TASKQID_INITIAL ; 
 int TASKQ_ACTIVE ; 
 int TASKQ_CPR_SAFE ; 
 int TASKQ_DYNAMIC ; 
 int TASKQ_PREPOPULATE ; 
 int TASKQ_THREADS_CPU_PCT ; 
 int /*<<< orphan*/  TQ_LOCK_GENERAL ; 
 int TQ_NEW ; 
 int TQ_PUSHPAGE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ spl_taskq_thread_dynamic ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 scalar_t__ FUNC16 (char const*) ; 
 int /*<<< orphan*/ * FUNC17 (TYPE_1__*) ; 
 int /*<<< orphan*/  tq_list ; 
 int /*<<< orphan*/  tq_list_sem ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int) ; 

taskq_t *
FUNC20(const char *name, int nthreads, pri_t pri,
    int minalloc, int maxalloc, uint_t flags)
{
	taskq_t *tq;
	taskq_thread_t *tqt;
	int count = 0, rc = 0, i;
	unsigned long irqflags;

	FUNC0(name != NULL);
	FUNC0(minalloc >= 0);
	FUNC0(maxalloc <= INT_MAX);
	FUNC0(!(flags & (TASKQ_CPR_SAFE))); /* Unsupported */

	/* Scale the number of threads using nthreads as a percentage */
	if (flags & TASKQ_THREADS_CPU_PCT) {
		FUNC0(nthreads <= 100);
		FUNC0(nthreads >= 0);
		nthreads = FUNC3(nthreads, 100);
		nthreads = FUNC2(nthreads, 0);
		nthreads = FUNC2((FUNC9() * nthreads) / 100, 1);
	}

	tq = FUNC6(sizeof (*tq), KM_PUSHPAGE);
	if (tq == NULL)
		return (NULL);

	FUNC10(&tq->tq_lock);
	FUNC1(&tq->tq_thread_list);
	FUNC1(&tq->tq_active_list);
	tq->tq_name = FUNC7(name);
	tq->tq_nactive = 0;
	tq->tq_nthreads = 0;
	tq->tq_nspawn = 0;
	tq->tq_maxthreads = nthreads;
	tq->tq_pri = pri;
	tq->tq_minalloc = minalloc;
	tq->tq_maxalloc = maxalloc;
	tq->tq_nalloc = 0;
	tq->tq_flags = (flags | TASKQ_ACTIVE);
	tq->tq_next_id = TASKQID_INITIAL;
	tq->tq_lowest_id = TASKQID_INITIAL;
	FUNC1(&tq->tq_free_list);
	FUNC1(&tq->tq_pend_list);
	FUNC1(&tq->tq_prio_list);
	FUNC1(&tq->tq_delay_list);
	FUNC5(&tq->tq_work_waitq);
	FUNC5(&tq->tq_wait_waitq);
	tq->tq_lock_class = TQ_LOCK_GENERAL;
	FUNC1(&tq->tq_taskqs);

	if (flags & TASKQ_PREPOPULATE) {
		FUNC11(&tq->tq_lock, irqflags,
		    tq->tq_lock_class);

		for (i = 0; i < minalloc; i++)
			FUNC14(tq, FUNC13(tq, TQ_PUSHPAGE | TQ_NEW,
			    &irqflags));

		FUNC12(&tq->tq_lock, irqflags);
	}

	if ((flags & TASKQ_DYNAMIC) && spl_taskq_thread_dynamic)
		nthreads = 1;

	for (i = 0; i < nthreads; i++) {
		tqt = FUNC17(tq);
		if (tqt == NULL)
			rc = 1;
		else
			count++;
	}

	/* Wait for all threads to be started before potential destroy */
	FUNC19(tq->tq_wait_waitq, tq->tq_nthreads == count);
	/*
	 * taskq_thread might have touched nspawn, but we don't want them to
	 * because they're not dynamically spawned. So we reset it to 0
	 */
	tq->tq_nspawn = 0;

	if (rc) {
		FUNC15(tq);
		tq = NULL;
	} else {
		FUNC4(&tq_list_sem);
		tq->tq_instance = FUNC16(name) + 1;
		FUNC8(&tq->tq_taskqs, &tq_list);
		FUNC18(&tq_list_sem);
	}

	return (tq);
}