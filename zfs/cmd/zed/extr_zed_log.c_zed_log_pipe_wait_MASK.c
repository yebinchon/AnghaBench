#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  c ;
struct TYPE_2__ {scalar_t__* pipe_fd; } ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 TYPE_1__ _ctx ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 (scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,...) ; 

void
FUNC4(void)
{
	ssize_t n;
	char c;

	if (_ctx.pipe_fd[0] < 0)
		FUNC3("Invalid use of zed_log_pipe_wait in PID %d",
		    (int)FUNC0());

	for (;;) {
		n = FUNC1(_ctx.pipe_fd[0], &c, sizeof (c));
		if (n < 0) {
			if (errno == EINTR)
				continue;
			FUNC3(
			    "Failed to read from daemonize pipe in PID %d: %s",
			    (int)FUNC0(), FUNC2(errno));
		}
		if (n == 0) {
			break;
		}
	}
}