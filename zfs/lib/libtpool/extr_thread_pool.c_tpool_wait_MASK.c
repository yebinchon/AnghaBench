#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int tp_flags; int /*<<< orphan*/  tp_mutex; int /*<<< orphan*/  tp_waitcv; int /*<<< orphan*/ * tp_active; int /*<<< orphan*/ * tp_head; } ;
typedef  TYPE_1__ tpool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int TP_ABANDON ; 
 int TP_DESTROY ; 
 int TP_WAIT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tpool_cleanup ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

void
FUNC6(tpool_t *tpool)
{
	FUNC0(!FUNC5(tpool));
	FUNC0(!(tpool->tp_flags & (TP_DESTROY | TP_ABANDON)));

	FUNC4(&tpool->tp_mutex);
	FUNC2(tpool_cleanup, tpool);
	while (tpool->tp_head != NULL || tpool->tp_active != NULL) {
		tpool->tp_flags |= TP_WAIT;
		(void) FUNC3(&tpool->tp_waitcv, &tpool->tp_mutex);
		FUNC0(!(tpool->tp_flags & (TP_DESTROY | TP_ABANDON)));
	}
	FUNC1(1);	/* pthread_mutex_unlock(&tpool->tp_mutex); */
}