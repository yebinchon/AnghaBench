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
typedef  int /*<<< orphan*/  BackgroundWorkerHandle ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*,char*,char*) ; 

__attribute__((used)) static BackgroundWorkerHandle *
FUNC1(char *params)
{
	/*
	 * TODO this is where we would increment the number of bgw used, if we
	 * decide to do so
	 */
	return FUNC0("ts_bgw_db_scheduler_test_main",
							   "ts_bgw_db_scheduler_test_main",
							   params);
}