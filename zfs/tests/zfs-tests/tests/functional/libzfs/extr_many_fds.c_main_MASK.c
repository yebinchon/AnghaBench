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
struct rlimit {int rlim_cur; int rlim_max; } ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  RLIMIT_NOFILE ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,struct rlimit*) ; 

int
FUNC6(int argc, char **argv)
{
	int i;
	struct rlimit limit;
	libzfs_handle_t *h;

	limit.rlim_cur = 65535;
	limit.rlim_max = 65535;

	if (FUNC5(RLIMIT_NOFILE, &limit) != 0) {
		(void) FUNC4("many_fds: setrlimit() failed with errno=%d\n",
		    errno);
		FUNC0(1);
	}

	for (i = 0; i < 255; ++i) {
		int fd = FUNC3("/dev/null", O_RDONLY);
		if (fd == -1) {
			(void) FUNC4("open failed with errno=%d\n", errno);
			return (1);
		}
	}

	h = FUNC2();

	if (h != NULL) {
		FUNC1(h);
		return (0);
	} else {
		(void) FUNC4("many_fds: libzfs_init() failed with errno=%d\n",
		    errno);
		return (1);
	}
}