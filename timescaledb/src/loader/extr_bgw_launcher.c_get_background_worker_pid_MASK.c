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
typedef  int /*<<< orphan*/  pid_t ;
typedef  scalar_t__ BgwHandleStatus ;
typedef  int /*<<< orphan*/  BackgroundWorkerHandle ;

/* Variables and functions */
 scalar_t__ BGWH_POSTMASTER_DIED ; 
 scalar_t__ BGWH_STOPPED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static BgwHandleStatus
FUNC2(BackgroundWorkerHandle *handle, pid_t *pidp)
{
	BgwHandleStatus status;
	pid_t pid;

	if (handle == NULL)
		status = BGWH_STOPPED;
	else
	{
		status = FUNC0(handle, &pid);
		if (pidp != NULL)
			*pidp = pid;
	}

	if (status == BGWH_POSTMASTER_DIED)
		FUNC1();
	return status;
}