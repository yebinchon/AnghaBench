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
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int errno ; 
 int kSBindFailed ; 
 int kSNewFailed ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC3(const int port, const int nTries, const int reuseFlag)
{
	int oerrno;
	int sfd;

	sfd = FUNC2(AF_INET, SOCK_DGRAM, 0);
	if (sfd < 0)
		return kSNewFailed;

	if (FUNC0(sfd, port, nTries, reuseFlag) < 0) {
		oerrno = errno;
		(void) FUNC1(sfd);
		errno = oerrno;
		return kSBindFailed;
	}

	return (sfd);
}