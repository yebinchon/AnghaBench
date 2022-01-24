#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int total_workers; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FATAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* ct ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

extern void
FUNC5(int decrement_by)
{
	/*
	 * Launcher is 1 worker, and when it dies we reinitialize, so we should
	 * never be below 1
	 */
	FUNC0(&ct->mutex);
	if (ct->total_workers - decrement_by >= 1)
	{
		ct->total_workers -= decrement_by;
		FUNC1(&ct->mutex);
	}
	else
	{
		FUNC1(&ct->mutex);
		FUNC2(FATAL,
				(FUNC4("TimescaleDB background worker cannot decrement workers below 1"),
				 FUNC3("The background worker scheduler is in an invalid state and may not be "
						 "keeping track of workers allocated to TimescaleDB properly, please "
						 "submit a bug report.")));
	}
}