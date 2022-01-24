#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ rc_count; } ;
struct TYPE_6__ {int /*<<< orphan*/  rr_lock; int /*<<< orphan*/  rr_cv; int /*<<< orphan*/ * rr_writer; TYPE_2__ rr_linked_rcount; TYPE_2__ rr_anon_rcount; int /*<<< orphan*/  rr_track_all; } ;
typedef  TYPE_1__ rrwlock_t ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * curthread ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/  zfs__rrwfastpath__exitmiss ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 scalar_t__ FUNC7 (TYPE_2__*,void*) ; 

void
FUNC8(rrwlock_t *rrl, void *tag)
{
	FUNC3(&rrl->rr_lock);
#if !defined(DEBUG) && defined(_KERNEL)
	if (!rrl->rr_writer && rrl->rr_linked_rcount.rc_count == 0) {
		rrl->rr_anon_rcount.rc_count--;
		if (rrl->rr_anon_rcount.rc_count == 0)
			cv_broadcast(&rrl->rr_cv);
		mutex_exit(&rrl->rr_lock);
		return;
	}
	DTRACE_PROBE(zfs__rrwfastpath__exitmiss);
#endif
	FUNC0(!FUNC6(&rrl->rr_anon_rcount) ||
	    !FUNC6(&rrl->rr_linked_rcount) ||
	    rrl->rr_writer != NULL);

	if (rrl->rr_writer == NULL) {
		int64_t count;
		if (FUNC5(rrl, tag)) {
			count = FUNC7(
			    &rrl->rr_linked_rcount, tag);
		} else {
			FUNC0(!rrl->rr_track_all);
			count = FUNC7(&rrl->rr_anon_rcount, tag);
		}
		if (count == 0)
			FUNC2(&rrl->rr_cv);
	} else {
		FUNC0(rrl->rr_writer == curthread);
		FUNC0(FUNC6(&rrl->rr_anon_rcount) &&
		    FUNC6(&rrl->rr_linked_rcount));
		rrl->rr_writer = NULL;
		FUNC2(&rrl->rr_cv);
	}
	FUNC4(&rrl->rr_lock);
}