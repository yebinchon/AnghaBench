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
 int /*<<< orphan*/  AF_INET ; 
 scalar_t__ FUNC0 (int,int const,int const,int const) ; 
 scalar_t__ FUNC1 (int,int) ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int errno ; 
 int kSBindFailed ; 
 int kSListenFailed ; 
 int kSNewFailed ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC4(const int port, const int nTries, const int reuseFlag, int listenQueueSize)
{
	int oerrno;
	int sfd;

	sfd = FUNC3(AF_INET, SOCK_STREAM, 0);
	if (sfd < 0)
		return kSNewFailed;

	if (FUNC0(sfd, port, nTries, reuseFlag) < 0) {
		oerrno = errno;
		(void) FUNC2(sfd);
		errno = oerrno;
		return kSBindFailed;
	}

	if (FUNC1(sfd, listenQueueSize) < 0) {
		oerrno = errno;
		(void) FUNC2(sfd);
		errno = oerrno;
		return kSListenFailed;
	}

	return (sfd);
}