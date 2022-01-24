#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  id; } ;
struct TYPE_8__ {TYPE_1__ fd; } ;
struct TYPE_9__ {TYPE_2__ job; } ;
typedef  TYPE_3__ ScheduledBgwJob ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  JOB_FAILURE ; 
 int /*<<< orphan*/  JOB_STATE_SCHEDULED ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(ScheduledBgwJob *sjob)
{
	FUNC1();
	if (!FUNC5(sjob->job.fd.id, CurrentMemoryContext))
		FUNC2(WARNING,
			 "scheduler detected that job %d was deleted while failing to start",
			 sjob->job.fd.id);
	else
		FUNC3(sjob, JOB_FAILURE);
	FUNC4(sjob, JOB_STATE_SCHEDULED);
	FUNC0();
}