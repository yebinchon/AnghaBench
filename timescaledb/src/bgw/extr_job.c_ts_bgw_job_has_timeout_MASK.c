#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  time; } ;
struct TYPE_6__ {TYPE_2__ max_runtime; } ;
struct TYPE_8__ {TYPE_1__ fd; } ;
typedef  TYPE_2__ Interval ;
typedef  TYPE_3__ BgwJob ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  interval_gt ; 

bool
FUNC3(BgwJob *job)
{
	Interval zero_val = {
		.time = 0,
	};

	return FUNC0(FUNC1(interval_gt,
											FUNC2(&job->fd.max_runtime),
											FUNC2(&zero_val)));
}