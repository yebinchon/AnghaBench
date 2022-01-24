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
struct io {scalar_t__ pid; int pipe; int /*<<< orphan*/  status; scalar_t__ error; int /*<<< orphan*/  buf; } ;
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct io*) ; 
 scalar_t__ FUNC6 (scalar_t__,int*,int /*<<< orphan*/ ) ; 

bool
FUNC7(struct io *io)
{
	pid_t pid = io->pid;

	if (io->pipe != -1)
		FUNC3(io->pipe);
	FUNC4(io->buf);
	FUNC5(io);

	while (pid > 0) {
		int status = 0;
		pid_t waiting = FUNC6(pid, &status, 0);

		if (waiting < 0) {
			if (errno == EINTR)
				continue;
			io->error = errno;
			return false;
		}

		io->status = FUNC1(status) ? FUNC0(status) : 0;

		return waiting == pid &&
		       !FUNC2(status) &&
		       !io->status;
	}

	return true;
}