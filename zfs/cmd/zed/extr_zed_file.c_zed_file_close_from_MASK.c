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
struct rlimit {int rlim_max; } ;

/* Variables and functions */
 int /*<<< orphan*/  RLIMIT_NOFILE ; 
 int RLIM_INFINITY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct rlimit*) ; 

void
FUNC2(int lowfd)
{
	const int maxfd_def = 256;
	int errno_bak;
	struct rlimit rl;
	int maxfd;
	int fd;

	errno_bak = errno;

	if (FUNC1(RLIMIT_NOFILE, &rl) < 0) {
		maxfd = maxfd_def;
	} else if (rl.rlim_max == RLIM_INFINITY) {
		maxfd = maxfd_def;
	} else {
		maxfd = rl.rlim_max;
	}
	for (fd = lowfd; fd < maxfd; fd++)
		(void) FUNC0(fd);

	errno = errno_bak;
}