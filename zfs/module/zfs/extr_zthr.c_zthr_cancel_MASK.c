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
struct TYPE_3__ {int /*<<< orphan*/  zthr_request_lock; int /*<<< orphan*/  zthr_state_lock; int /*<<< orphan*/  zthr_cancel; int /*<<< orphan*/  zthr_cv; int /*<<< orphan*/ * zthr_thread; } ;
typedef  TYPE_1__ zthr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(zthr_t *t)
{
	FUNC3(&t->zthr_request_lock);
	FUNC3(&t->zthr_state_lock);

	/*
	 * Since we are holding the zthr_state_lock at this point
	 * we can find the state in one of the following 4 states:
	 *
	 * [1] The thread has already been cancelled, therefore
	 *     there is nothing for us to do.
	 * [2] The thread is sleeping so we set the flag, broadcast
	 *     the CV and wait for it to exit.
	 * [3] The thread is doing work, in which case we just set
	 *     the flag and wait for it to finish.
	 * [4] The thread was just created/resumed, in which case
	 *     the behavior is similar to [3].
	 *
	 * Since requests are serialized, by the time that we get
	 * control back we expect that the zthr is cancelled and
	 * not running anymore.
	 */
	if (t->zthr_thread != NULL) {
		t->zthr_cancel = B_TRUE;

		/* broadcast in case the zthr is sleeping */
		FUNC1(&t->zthr_cv);

		while (t->zthr_thread != NULL)
			FUNC2(&t->zthr_cv, &t->zthr_state_lock);

		FUNC0(!t->zthr_cancel);
	}

	FUNC4(&t->zthr_state_lock);
	FUNC4(&t->zthr_request_lock);
}