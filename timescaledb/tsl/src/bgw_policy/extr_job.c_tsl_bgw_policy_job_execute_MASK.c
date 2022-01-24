#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  job_type; int /*<<< orphan*/  id; } ;
struct TYPE_9__ {int bgw_type; TYPE_1__ fd; } ;
typedef  TYPE_2__ BgwJob ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
#define  JOB_TYPE_COMPRESS_CHUNKS 131 
#define  JOB_TYPE_CONTINUOUS_AGGREGATE 130 
#define  JOB_TYPE_DROP_CHUNKS 129 
#define  JOB_TYPE_REORDER 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_2__*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_2__*) ; 
 int FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  reorder_chunk ; 

bool
FUNC10(BgwJob *job)
{
	if (FUNC1(job))
		FUNC7();
	FUNC8();

	switch (job->bgw_type)
	{
		case JOB_TYPE_REORDER:
			return FUNC6(job, reorder_chunk, true);
		case JOB_TYPE_DROP_CHUNKS:
			return FUNC4(job->fd.id);
		case JOB_TYPE_CONTINUOUS_AGGREGATE:
			return FUNC5(job);
		case JOB_TYPE_COMPRESS_CHUNKS:
			return FUNC3(job);
		default:
			FUNC2(ERROR,
				 "scheduler tried to run an invalid job type: \"%s\"",
				 FUNC0(job->fd.job_type));
	}
	FUNC9();
}