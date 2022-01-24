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
typedef  scalar_t__ int64 ;
typedef  int /*<<< orphan*/  TimestampTz ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ INT_MAX ; 
 scalar_t__ MAX_TIMEOUT ; 
 int /*<<< orphan*/  MyLatch ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int WL_LATCH_SET ; 
 int WL_POSTMASTER_DEATH ; 
 int WL_TIMEOUT ; 
 int FUNC2 (int /*<<< orphan*/ ,int,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static bool
FUNC5(TimestampTz until)
{
	int wl_rc;

	int64 timeout = FUNC3(until);

	FUNC0(timeout >= 0 && "get_timeout_millisec underflow");

	if (timeout > MAX_TIMEOUT)
		timeout = MAX_TIMEOUT;

	/* Wait latch requires timeout to be <= INT_MAX */
	if ((int64) timeout > (int64) INT_MAX)
		timeout = INT_MAX;

	wl_rc = FUNC2(MyLatch, WL_LATCH_SET | WL_TIMEOUT | WL_POSTMASTER_DEATH, timeout);
	FUNC1(MyLatch);
	if (wl_rc & WL_POSTMASTER_DEATH)
		FUNC4();

	return true;
}