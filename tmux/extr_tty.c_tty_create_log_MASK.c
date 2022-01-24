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
 int /*<<< orphan*/  FD_CLOEXEC ; 
 int /*<<< orphan*/  F_SETFD ; 
 int O_CREAT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 (char*,int,int) ; 
 int tty_log_fd ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,long) ; 

void
FUNC5(void)
{
	char	name[64];

	FUNC4(name, sizeof name, "tmux-out-%ld.log", (long)FUNC2());

	tty_log_fd = FUNC3(name, O_WRONLY|O_CREAT|O_TRUNC, 0644);
	if (tty_log_fd != -1 && FUNC1(tty_log_fd, F_SETFD, FD_CLOEXEC) == -1)
		FUNC0("fcntl failed");
}