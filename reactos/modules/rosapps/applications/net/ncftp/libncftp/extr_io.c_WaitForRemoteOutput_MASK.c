#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
typedef  int fd_set ;
struct TYPE_4__ {int xferTimeout; int dataSocket; int cancelXfer; int stalled; int dataTimedOut; } ;
typedef  TYPE_1__* FTPCIPtr ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  FUNC0 (int,int*) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__* const) ; 
 int SELECT_TYPE_ARG234 ; 
 int /*<<< orphan*/  SIGALRM ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (int,int /*<<< orphan*/ *,int,int,struct timeval*) ; 

__attribute__((used)) static int
FUNC7(const FTPCIPtr cip)
{
	fd_set ss, ss2;
	struct timeval tv;
	int result;
	int fd;
	int wsecs;
	int xferTimeout;
	int ocancelXfer;

	xferTimeout = cip->xferTimeout;
	if (xferTimeout < 1)
		return (1);

	fd = cip->dataSocket;
	if (fd < 0)
		return (1);

	ocancelXfer = cip->cancelXfer;
	wsecs = 0;
	cip->stalled = 0;

	while ((xferTimeout <= 0) || (wsecs < xferTimeout)) {
		if ((cip->cancelXfer != 0) && (ocancelXfer == 0)) {
			/* leave cip->stalled -- could have been stalled and then canceled. */
			return (1);
		}
		FUNC1(&ss);
		FUNC0(fd, &ss);
		ss2 = ss;
		tv.tv_sec = 1;
		tv.tv_usec = 0;
		result = FUNC6(fd + 1, NULL, SELECT_TYPE_ARG234 &ss, SELECT_TYPE_ARG234 &ss2, &tv);
		if (result == 1) {
			/* ready */
			cip->stalled = 0;
			return (1);
		} else if (result < 0) {
			if (errno != EINTR) {
				FUNC5("select");
				cip->stalled = 0;
				return (1);
			}
		} else {
			wsecs++;
			cip->stalled = wsecs;
		}
		FUNC2(cip);
	}

#if !defined(NO_SIGNALS)
	/* Shouldn't get here -- alarm() should have
	 * went off by now.
	 */
	(void) FUNC4(FUNC3(), SIGALRM);
#endif	/* NO_SIGNALS */

	cip->dataTimedOut = 1;
	return (0);	/* timed-out */
}