#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  rc_count; } ;
struct TYPE_8__ {int /*<<< orphan*/  rr_lock; int /*<<< orphan*/ * rr_writer; TYPE_2__ rr_anon_rcount; TYPE_2__ rr_linked_rcount; scalar_t__ rr_track_all; scalar_t__ rr_writer_wanted; int /*<<< orphan*/  rr_cv; } ;
typedef  TYPE_1__ rrwlock_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * curthread ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  zfs__rrwfastpath__rdmiss ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,void*) ; 
 scalar_t__ FUNC8 (TYPE_2__*) ; 
 scalar_t__ FUNC9 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC10(rrwlock_t *rrl, boolean_t prio, void *tag)
{
	FUNC3(&rrl->rr_lock);
#if !defined(DEBUG) && defined(_KERNEL)
	if (rrl->rr_writer == NULL && !rrl->rr_writer_wanted &&
	    !rrl->rr_track_all) {
		rrl->rr_anon_rcount.rc_count++;
		mutex_exit(&rrl->rr_lock);
		return;
	}
	DTRACE_PROBE(zfs__rrwfastpath__rdmiss);
#endif
	FUNC0(rrl->rr_writer != curthread);
	FUNC0(FUNC8(&rrl->rr_anon_rcount) >= 0);

	while (rrl->rr_writer != NULL || (rrl->rr_writer_wanted &&
	    FUNC9(&rrl->rr_anon_rcount) && !prio &&
	    FUNC6(rrl) == NULL))
		FUNC2(&rrl->rr_cv, &rrl->rr_lock);

	if (rrl->rr_writer_wanted || rrl->rr_track_all) {
		/* may or may not be a re-entrant enter */
		FUNC5(rrl, tag);
		(void) FUNC7(&rrl->rr_linked_rcount, tag);
	} else {
		(void) FUNC7(&rrl->rr_anon_rcount, tag);
	}
	FUNC0(rrl->rr_writer == NULL);
	FUNC4(&rrl->rr_lock);
}