#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  B_TRUE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  arc_adjust_lock ; 
 int /*<<< orphan*/  arc_adjust_needed ; 
 int /*<<< orphan*/  arc_adjust_zthr ; 
 int arc_c ; 
 scalar_t__ arc_c_min ; 
 int arc_p ; 
 int arc_shrink_shift ; 
 int /*<<< orphan*/  arc_size ; 
 int /*<<< orphan*/  FUNC2 (int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void
FUNC6(int64_t to_free)
{
	uint64_t asize = FUNC1(&arc_size);
	uint64_t c = arc_c;

	if (c > to_free && c - to_free > arc_c_min) {
		arc_c = c - to_free;
		FUNC2(&arc_p, -(arc_p >> arc_shrink_shift));
		if (arc_p > arc_c)
			arc_p = (arc_c >> 1);
		FUNC0(arc_c >= arc_c_min);
		FUNC0((int64_t)arc_p >= 0);
	} else {
		arc_c = arc_c_min;
	}

	if (asize > arc_c) {
		/* See comment in arc_adjust_cb_check() on why lock+flag */
		FUNC3(&arc_adjust_lock);
		arc_adjust_needed = B_TRUE;
		FUNC4(&arc_adjust_lock);
		FUNC5(arc_adjust_zthr);
	}
}