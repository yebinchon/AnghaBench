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

/* Variables and functions */
 int FWRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  l2arc_feed_thr_cv ; 
 int /*<<< orphan*/  l2arc_feed_thr_lock ; 
 int l2arc_thread_exit ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int spa_mode_global ; 

void
FUNC4(void)
{
	if (!(spa_mode_global & FWRITE))
		return;

	FUNC2(&l2arc_feed_thr_lock);
	FUNC0(&l2arc_feed_thr_cv);	/* kick thread out of startup */
	l2arc_thread_exit = 1;
	while (l2arc_thread_exit != 0)
		FUNC1(&l2arc_feed_thr_cv, &l2arc_feed_thr_lock);
	FUNC3(&l2arc_feed_thr_lock);
}