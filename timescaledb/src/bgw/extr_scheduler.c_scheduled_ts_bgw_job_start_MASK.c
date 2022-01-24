#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  (* register_background_worker_callback_type ) (int /*<<< orphan*/ *) ;
typedef  int /*<<< orphan*/  pid_t ;
struct TYPE_4__ {scalar_t__ state; int /*<<< orphan*/ * handle; } ;
typedef  TYPE_1__ ScheduledBgwJob ;
typedef  int BgwHandleStatus ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  BGWH_NOT_YET_STARTED 131 
#define  BGWH_POSTMASTER_DIED 130 
#define  BGWH_STARTED 129 
#define  BGWH_STOPPED 128 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ JOB_STATE_SCHEDULED ; 
 scalar_t__ JOB_STATE_STARTED ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,scalar_t__) ; 

__attribute__((used)) static void
FUNC7(ScheduledBgwJob *sjob,
						   register_background_worker_callback_type bgw_register)
{
	pid_t pid;
	BgwHandleStatus status;

	FUNC6(sjob, JOB_STATE_STARTED);

	if (sjob->state != JOB_STATE_STARTED)
		return;

	FUNC0(sjob->handle != NULL);
	if (bgw_register != NULL)
		bgw_register(sjob->handle);

	status = FUNC3(sjob->handle, &pid);
	switch (status)
	{
		case BGWH_POSTMASTER_DIED:
			FUNC4();
			break;
		case BGWH_STARTED:
			/* all good */
			break;
		case BGWH_STOPPED:
			FUNC2();
			FUNC6(sjob, JOB_STATE_SCHEDULED);
			FUNC1();
			break;
		case BGWH_NOT_YET_STARTED:
			/* should not be possible */
			FUNC5(ERROR, "unexpected bgworker state %d", status);
			break;
	}
}