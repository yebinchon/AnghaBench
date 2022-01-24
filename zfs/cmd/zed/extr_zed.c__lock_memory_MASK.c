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

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int MCL_CURRENT ; 
 int MCL_FUTURE ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC4(void)
{
#if HAVE_MLOCKALL
	int i = 0;
	const int max_tries = 10;

	for (i = 0; i < max_tries; i++) {
		if (mlockall(MCL_CURRENT | MCL_FUTURE) == 0) {
			zed_log_msg(LOG_INFO, "Locked all pages in memory");
			return;
		}
		if (errno != EAGAIN)
			break;
	}
	zed_log_die("Failed to lock memory pages: %s", strerror(errno));

#else /* HAVE_MLOCKALL */
	FUNC2("Failed to lock memory pages: mlockall() not supported");
#endif /* HAVE_MLOCKALL */
}