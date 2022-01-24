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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  l2arc_dev_list ; 
 int /*<<< orphan*/  l2arc_dev_mtx ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  l2arc_feed_thr_cv ; 
 int /*<<< orphan*/  l2arc_feed_thr_lock ; 
 int /*<<< orphan*/  l2arc_free_on_write ; 
 int /*<<< orphan*/  l2arc_free_on_write_mtx ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(void)
{
	/*
	 * This is called from dmu_fini(), which is called from spa_fini();
	 * Because of this, we can assume that all l2arc devices have
	 * already been removed when the pools themselves were removed.
	 */

	FUNC1();

	FUNC3(&l2arc_feed_thr_lock);
	FUNC0(&l2arc_feed_thr_cv);
	FUNC3(&l2arc_dev_mtx);
	FUNC3(&l2arc_free_on_write_mtx);

	FUNC2(l2arc_dev_list);
	FUNC2(l2arc_free_on_write);
}