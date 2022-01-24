#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  opt ;
struct TYPE_3__ {int errNo; } ;
typedef  TYPE_1__* FTPCIPtr ;

/* Variables and functions */
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_KEEPALIVE ; 
 int kErrSetKeepAlive ; 
 int kNoErr ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 

int
FUNC1(const FTPCIPtr cip, int sockfd)
{
#ifndef SO_KEEPALIVE
	cip->errNo = kErrSetKeepAlive;
	return (kErrSetKeepAlive);
#else
	int opt;

	opt = 1;

	if (setsockopt(sockfd, SOL_SOCKET, SO_KEEPALIVE, (char *) &opt, (int) sizeof(opt)) < 0) {
		/* Error(cip, kDoPerror, "Could not set keep-alive mode.\n"); */
		cip->errNo = kErrSetKeepAlive;
		return (kErrSetKeepAlive);
	}
	return (kNoErr);
#endif	/* SO_KEEPALIVE */
}