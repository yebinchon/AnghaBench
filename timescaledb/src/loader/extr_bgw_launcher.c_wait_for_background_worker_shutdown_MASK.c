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
typedef  scalar_t__ BgwHandleStatus ;
typedef  int /*<<< orphan*/  BackgroundWorkerHandle ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ BGWH_POSTMASTER_DIED ; 
 scalar_t__ BGWH_STOPPED ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void
FUNC3(BackgroundWorkerHandle *handle)
{
	BgwHandleStatus status;

	if (handle == NULL)
		status = BGWH_STOPPED;
	else
		status = FUNC1(handle);

	/* We can only ever get BGWH_STOPPED stopped unless the Postmaster died. */
	if (status == BGWH_POSTMASTER_DIED)
		FUNC2();

	FUNC0(status == BGWH_STOPPED);
	return;
}