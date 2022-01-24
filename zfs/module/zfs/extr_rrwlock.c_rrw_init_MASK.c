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
struct TYPE_3__ {int /*<<< orphan*/  rr_track_all; int /*<<< orphan*/  rr_writer_wanted; int /*<<< orphan*/  rr_linked_rcount; int /*<<< orphan*/  rr_anon_rcount; int /*<<< orphan*/ * rr_writer; int /*<<< orphan*/  rr_cv; int /*<<< orphan*/  rr_lock; } ;
typedef  TYPE_1__ rrwlock_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  CV_DEFAULT ; 
 int /*<<< orphan*/  MUTEX_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(rrwlock_t *rrl, boolean_t track_all)
{
	FUNC1(&rrl->rr_lock, NULL, MUTEX_DEFAULT, NULL);
	FUNC0(&rrl->rr_cv, NULL, CV_DEFAULT, NULL);
	rrl->rr_writer = NULL;
	FUNC2(&rrl->rr_anon_rcount);
	FUNC2(&rrl->rr_linked_rcount);
	rrl->rr_writer_wanted = B_FALSE;
	rrl->rr_track_all = track_all;
}