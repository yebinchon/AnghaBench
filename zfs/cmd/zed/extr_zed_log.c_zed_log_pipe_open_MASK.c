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
struct TYPE_2__ {int* pipe_fd; } ;

/* Variables and functions */
 TYPE_1__ _ctx ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,...) ; 

void
FUNC4(void)
{
	if ((_ctx.pipe_fd[0] != -1) || (_ctx.pipe_fd[1] != -1))
		FUNC3("Invalid use of zed_log_pipe_open in PID %d",
		    (int)FUNC0());

	if (FUNC1(_ctx.pipe_fd) < 0)
		FUNC3("Failed to create daemonize pipe in PID %d: %s",
		    (int)FUNC0(), FUNC2(errno));
}