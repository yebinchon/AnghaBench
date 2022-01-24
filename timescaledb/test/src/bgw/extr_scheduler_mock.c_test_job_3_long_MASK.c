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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (long double) ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  log_terminate_signal ; 
 int /*<<< orphan*/  pg_sleep ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * prev_signal_func ; 

__attribute__((used)) static bool
FUNC6()
{
	FUNC0();

	/*
	 * Only set prev_signal_func once to prevent it from being set to
	 * log_terminate_signal.
	 */
	if (prev_signal_func == NULL)
		prev_signal_func = FUNC5(SIGTERM, log_terminate_signal);
	/* Setup any signal handlers here */
	FUNC1();

	FUNC4(WARNING, "Before sleep job 3");

	FUNC2(pg_sleep, FUNC3(0.5L));

	FUNC4(WARNING, "After sleep job 3");
	return true;
}