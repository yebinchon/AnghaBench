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
typedef  int /*<<< orphan*/  spa_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ zfs_abd_scatter_enabled ; 
 scalar_t__ zfs_compressed_arc_enabled ; 
 int /*<<< orphan*/  ztest_exiting ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(void *arg)
{
	spa_t *spa = arg;

	while (!ztest_exiting) {
		if (FUNC1(spa))
			FUNC4(spa);
		(void) FUNC0(NULL, 0, 100);

		/*
		 * Periodically change the zfs_compressed_arc_enabled setting.
		 */
		if (FUNC3(10) == 0)
			zfs_compressed_arc_enabled = FUNC3(2);

		/*
		 * Periodically change the zfs_abd_scatter_enabled setting.
		 */
		if (FUNC3(10) == 0)
			zfs_abd_scatter_enabled = FUNC3(2);
	}

	FUNC2();
}