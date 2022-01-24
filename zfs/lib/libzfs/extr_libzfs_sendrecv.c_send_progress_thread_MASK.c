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
struct TYPE_4__ {char* zfs_name; } ;
typedef  TYPE_1__ zfs_handle_t ;
typedef  scalar_t__ uint64_t ;
typedef  char* u_longlong_t ;
typedef  int /*<<< orphan*/  time_t ;
struct tm {int tm_hour; int tm_min; int tm_sec; } ;
struct TYPE_5__ {int pa_verbosity; scalar_t__ pa_parsable; scalar_t__ pa_estimate; int /*<<< orphan*/  pa_fd; TYPE_1__* pa_zhp; } ;
typedef  TYPE_2__ progress_arg_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ B_FALSE ; 
 scalar_t__ B_TRUE ; 
 int EINTR ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 struct tm* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,char*,int) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ; 

__attribute__((used)) static void *
FUNC7(void *arg)
{
	progress_arg_t *pa = arg;
	zfs_handle_t *zhp = pa->pa_zhp;
	uint64_t bytes;
	uint64_t blocks;
	char buf[16];
	time_t t;
	struct tm *tm;
	boolean_t firstloop = B_TRUE;

	/*
	 * Print the progress from ZFS_IOC_SEND_PROGRESS every second.
	 */
	for (;;) {
		int err;
		(void) FUNC2(1);
		if ((err = FUNC6(zhp, pa->pa_fd, &bytes,
		    &blocks)) != 0) {
			if (err == EINTR || err == ENOENT)
				return ((void *)0);
			return ((void *)(uintptr_t)err);
		}

		if (firstloop && !pa->pa_parsable) {
			(void) FUNC0(stderr,
			    "TIME       %s   %sSNAPSHOT %s\n",
			    pa->pa_estimate ? "BYTES" : " SENT",
			    pa->pa_verbosity >= 2 ? "   BLOCKS    " : "",
			    zhp->zfs_name);
			firstloop = B_FALSE;
		}

		(void) FUNC3(&t);
		tm = FUNC1(&t);

		if (pa->pa_verbosity >= 2 && pa->pa_parsable) {
			(void) FUNC0(stderr,
			    "%02d:%02d:%02d\t%s\t%s\t%s\n",
			    tm->tm_hour, tm->tm_min, tm->tm_sec,
			    (u_longlong_t)bytes, (u_longlong_t)blocks,
			    zhp->zfs_name);
		} else if (pa->pa_verbosity >= 2) {
			FUNC5(bytes, buf, sizeof (buf));
			(void) FUNC0(stderr,
			    "%02d:%02d:%02d   %5s    %8s    %s\n",
			    tm->tm_hour, tm->tm_min, tm->tm_sec,
			    buf, (u_longlong_t)blocks, zhp->zfs_name);
		} else if (pa->pa_parsable) {
			(void) FUNC0(stderr, "%02d:%02d:%02d\t%s\t%s\n",
			    tm->tm_hour, tm->tm_min, tm->tm_sec,
			    (u_longlong_t)bytes, zhp->zfs_name);
		} else {
			FUNC4(bytes, buf, sizeof (buf));
			(void) FUNC0(stderr, "%02d:%02d:%02d   %5s   %s\n",
			    tm->tm_hour, tm->tm_min, tm->tm_sec,
			    buf, zhp->zfs_name);
		}
	}
}