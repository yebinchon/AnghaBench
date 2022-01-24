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
struct mevent {int dummy; } ;
struct kevent {int dummy; } ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  EVF_READ ; 
 int MEVENT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int,struct kevent*,int,struct kevent*,int,int /*<<< orphan*/ *) ; 
 int FUNC3 () ; 
 struct mevent* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int,struct kevent*) ; 
 int /*<<< orphan*/  FUNC6 (struct kevent*,int) ; 
 int /*<<< orphan*/  mevent_pipe_read ; 
 int /*<<< orphan*/ * mevent_pipefd ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  mevent_tid ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__ ((noreturn)) void
FUNC11(void)
{
	struct kevent changelist[MEVENT_MAX];
	struct kevent eventlist[MEVENT_MAX];
	struct mevent *pipev;
	int mfd;
	int numev;
	int ret;

	mevent_tid = FUNC10();
	FUNC7();

	mfd = FUNC3();
	FUNC0(mfd > 0);

	/*
	 * Open the pipe that will be used for other threads to force
	 * the blocking kqueue call to exit by writing to it. Set the
	 * descriptor to non-blocking.
	 */
	ret = FUNC9(mevent_pipefd);
	if (ret < 0) {
		FUNC8("pipe");
		FUNC1(0);
	}

	/*
	 * Add internal event handler for the pipe write fd
	 */
	pipev = FUNC4(mevent_pipefd[0], EVF_READ, mevent_pipe_read, NULL);
	FUNC0(pipev != NULL);

	for (;;) {
		/*
		 * Build changelist if required.
		 * XXX the changelist can be put into the blocking call
		 * to eliminate the extra syscall. Currently better for
		 * debug.
		 */
		numev = FUNC5(mfd, changelist);
		if (numev) {
			ret = FUNC2(mfd, changelist, numev, NULL, 0, NULL);
			if (ret == -1) {
				FUNC8("Error return from kevent change");
			}
		}

		/*
		 * Block awaiting events
		 */
		ret = FUNC2(mfd, NULL, 0, eventlist, MEVENT_MAX, NULL);
		if (ret == -1 && errno != EINTR) {
			FUNC8("Error return from kevent monitor");
		}
		
		/*
		 * Handle reported events
		 */
		FUNC6(eventlist, ret);
	}			
}