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
typedef  scalar_t__ vsio_sigproc_t ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  sio_sigproc_t ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 scalar_t__ ETIMEDOUT ; 
 int /*<<< orphan*/  SIGALRM ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  SIOHandler ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  gNetTimeoutJmp ; 
 int kTimeoutErr ; 

int
FUNC4(int sfd, struct sockaddr_in *const addr, int tlen)
{
	int result;
#ifndef NO_SIGNALS
	vsio_sigproc_t sigalrm, sigpipe;
#endif
	size_t size;

	if (tlen < 0) {
		errno = 0;
		for (;;) {
			size = sizeof(struct sockaddr_in);
			result = FUNC2(sfd, (struct sockaddr *) addr, (int *) &size);
			if ((result >= 0) || (errno != EINTR))
				return (result);
		}
	}
#ifndef NO_SIGNALS
	if (FUNC0(gNetTimeoutJmp) != 0) {
		FUNC3(0);
		(void) FUNC1(SIGALRM, (sio_sigproc_t) sigalrm);
		(void) FUNC1(SIGPIPE, (sio_sigproc_t) sigpipe);
		errno = ETIMEDOUT;
		return (kTimeoutErr);
	}

	sigalrm = (vsio_sigproc_t) FUNC1(SIGALRM, SIOHandler);
	sigpipe = (vsio_sigproc_t) FUNC1(SIGPIPE, SIG_IGN);
	FUNC3((unsigned int) tlen);

	errno = 0;
	do {
		size = sizeof(struct sockaddr_in);
		result = FUNC2(sfd, (struct sockaddr *) addr, (int *) &size);
	} while ((result < 0) && (errno == EINTR));

	FUNC3(0);
	(void) FUNC1(SIGALRM, (sio_sigproc_t) sigalrm);
	(void) FUNC1(SIGPIPE, (sio_sigproc_t) sigpipe);
	return (result);
#else
	return (-1);
#endif
}