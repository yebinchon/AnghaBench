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
typedef  scalar_t__ TimestampTz ;
typedef  int /*<<< orphan*/  BgwJob ;

/* Variables and functions */
 int /*<<< orphan*/  MIN_WAIT_AFTER_CRASH_MS ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 () ; 

__attribute__((used)) static TimestampTz
FUNC3(int consecutive_crashes, BgwJob *job)
{
	TimestampTz now = FUNC2();
	TimestampTz failure_calc = FUNC1(now, consecutive_crashes, job);
	TimestampTz min_time = FUNC0(now, MIN_WAIT_AFTER_CRASH_MS);

	if (min_time > failure_calc)
		return min_time;
	return failure_calc;
}