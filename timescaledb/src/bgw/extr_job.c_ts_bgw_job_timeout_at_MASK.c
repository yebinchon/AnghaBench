#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TimestampTz ;
struct TYPE_4__ {int /*<<< orphan*/  max_runtime; } ;
struct TYPE_5__ {TYPE_1__ fd; } ;
typedef  TYPE_2__ BgwJob ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  timestamptz_pl_interval ; 

TimestampTz
FUNC4(BgwJob *job, TimestampTz start_time)
{
	/* timestamptz plus interval */
	return FUNC0(FUNC1(timestamptz_pl_interval,
												   FUNC3(start_time),
												   FUNC2(&job->fd.max_runtime)));
}