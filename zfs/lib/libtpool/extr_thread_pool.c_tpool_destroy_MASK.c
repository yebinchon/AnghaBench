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
struct TYPE_7__ {int tp_flags; scalar_t__ tp_current; int /*<<< orphan*/  tp_mutex; int /*<<< orphan*/  tp_busycv; int /*<<< orphan*/  tp_waitcv; TYPE_2__* tp_active; int /*<<< orphan*/  tp_workcv; } ;
typedef  TYPE_1__ tpool_t ;
struct TYPE_8__ {int /*<<< orphan*/  tpa_tid; struct TYPE_8__* tpa_next; } ;
typedef  TYPE_2__ tpool_active_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int TP_ABANDON ; 
 int TP_DESTROY ; 
 int TP_SUSPEND ; 
 int TP_WAIT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tpool_cleanup ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

void
FUNC9(tpool_t *tpool)
{
	tpool_active_t *activep;

	FUNC0(!FUNC8(tpool));
	FUNC0(!(tpool->tp_flags & (TP_DESTROY | TP_ABANDON)));

	FUNC7(&tpool->tp_mutex);
	FUNC4(tpool_cleanup, tpool);

	/* mark the pool as being destroyed; wakeup idle workers */
	tpool->tp_flags |= TP_DESTROY;
	tpool->tp_flags &= ~TP_SUSPEND;
	(void) FUNC5(&tpool->tp_workcv);

	/* cancel all active workers */
	for (activep = tpool->tp_active; activep; activep = activep->tpa_next)
		(void) FUNC2(activep->tpa_tid);

	/* wait for all active workers to finish */
	while (tpool->tp_active != NULL) {
		tpool->tp_flags |= TP_WAIT;
		(void) FUNC6(&tpool->tp_waitcv, &tpool->tp_mutex);
	}

	/* the last worker to terminate will wake us up */
	while (tpool->tp_current != 0)
		(void) FUNC6(&tpool->tp_busycv, &tpool->tp_mutex);

	FUNC3(1);	/* pthread_mutex_unlock(&tpool->tp_mutex); */
	FUNC1(tpool);
}