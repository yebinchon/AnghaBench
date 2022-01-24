#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  job_type; int /*<<< orphan*/  application_name; } ;
struct TYPE_6__ {TYPE_1__ fd; } ;
typedef  int /*<<< orphan*/  Interval ;
typedef  TYPE_2__ BgwJob ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC3 (double) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
#define  TEST_JOB_TYPE_JOB_1 134 
#define  TEST_JOB_TYPE_JOB_2_ERROR 133 
#define  TEST_JOB_TYPE_JOB_3_LONG 132 
#define  TEST_JOB_TYPE_JOB_4 131 
#define  TEST_JOB_TYPE_JOB_5_LOCK 130 
#define  TEST_JOB_TYPE_JOB_6_LOCK_NOTXN 129 
#define  _MAX_TEST_JOB_TYPE 128 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  make_interval ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 () ; 
 int FUNC11 () ; 
 int FUNC12 () ; 
 int /*<<< orphan*/  test_job_4 ; 
 int FUNC13 () ; 
 int FUNC14 () ; 
 int FUNC15 (TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 

__attribute__((used)) static bool
FUNC19(BgwJob *job)
{
	FUNC18();
	FUNC16(FUNC9(FUNC5(job->fd.application_name)));

	FUNC6();
	FUNC17();
	FUNC0();

	switch (FUNC8(&job->fd.job_type))
	{
		case TEST_JOB_TYPE_JOB_1:
			return FUNC10();
		case TEST_JOB_TYPE_JOB_2_ERROR:
			return FUNC11();
		case TEST_JOB_TYPE_JOB_3_LONG:
			return FUNC12();
		case TEST_JOB_TYPE_JOB_4:
		{
			/* Set next_start to 200ms */
			Interval *new_interval = FUNC1(FUNC2(make_interval,
																		   FUNC4(0),
																		   FUNC4(0),
																		   FUNC4(0),
																		   FUNC4(0),
																		   FUNC4(0),
																		   FUNC4(0),
																		   FUNC3(0.2)));

			return FUNC15(job, test_job_4, 3, new_interval);
		}
		case TEST_JOB_TYPE_JOB_5_LOCK:
			return FUNC13();
		case TEST_JOB_TYPE_JOB_6_LOCK_NOTXN:
			return FUNC14();
		case _MAX_TEST_JOB_TYPE:
			FUNC7(ERROR,
				 "unrecognized test job type: %s %d",
				 FUNC5(job->fd.job_type),
				 FUNC8(&job->fd.job_type));
	}
	return false;
}