#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zpool_handle_t ;
struct TYPE_3__ {long wd_interval; int /*<<< orphan*/  wd_sem; int /*<<< orphan*/  wd_poolname; } ;
typedef  TYPE_1__ wait_data_t ;
struct timespec {long tv_sec; long tv_nsec; } ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_REALTIME ; 
 scalar_t__ ETIMEDOUT ; 
 long NANOSEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct timespec*) ; 
 scalar_t__ errno ; 
 long FUNC1 (long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  g_zfs ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,struct timespec*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,scalar_t__*) ; 

void *
FUNC11(void *arg)
{
	wait_data_t *wd = (wait_data_t *)arg;
	zpool_handle_t *zhp;

	if ((zhp = FUNC8(g_zfs, wd->wd_poolname)) == NULL)
		return (void *)(1);

	for (int row = 0; ; row++) {
		boolean_t missing;
		struct timespec timeout;
		(void) FUNC0(CLOCK_REALTIME, &timeout);

		if (FUNC10(zhp, &missing) != 0 || missing ||
		    FUNC9(zhp) != 0) {
			FUNC7(zhp);
			return (void *)(uintptr_t)(missing ? 0 : 1);
		}

		FUNC4(wd, zhp, row);

		timeout.tv_sec += FUNC1(wd->wd_interval);
		long nanos = timeout.tv_nsec +
		    (wd->wd_interval - FUNC1(wd->wd_interval)) * NANOSEC;
		if (nanos >= NANOSEC) {
			timeout.tv_sec++;
			timeout.tv_nsec = nanos - NANOSEC;
		} else {
			timeout.tv_nsec = nanos;
		}

		if (FUNC5(&wd->wd_sem, &timeout) == 0) {
			break; /* signaled by main thread */
		} else if (errno != ETIMEDOUT) {
			(void) FUNC2(stderr, FUNC3("sem_timedwait failed: "
			    "%s\n"), FUNC6(errno));
			FUNC7(zhp);
			return (void *)(uintptr_t)(1);
		}
	}

	FUNC7(zhp);
	return (void *)(0);
}