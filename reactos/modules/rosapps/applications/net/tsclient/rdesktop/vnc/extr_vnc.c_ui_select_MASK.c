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
struct timeval {int tv_sec; int tv_usec; } ;
typedef  int /*<<< orphan*/  fd_set ;
struct TYPE_3__ {int maxFd; int /*<<< orphan*/  clientHead; int /*<<< orphan*/  allFds; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int defer_time ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 TYPE_1__* server ; 

int
FUNC5(int rdpSocket)
{
	fd_set fds;
	struct timeval tv;
	int n, m = server->maxFd;

	if (rdpSocket > m)
		m = rdpSocket;
	while (1)
	{
		fds = server->allFds;
		FUNC1(rdpSocket, &fds);
		tv.tv_sec = defer_time / 1000;
		tv.tv_usec = (defer_time % 1000) * 1000;
		n = FUNC4(m + 1, &fds, NULL, NULL, &tv);
		FUNC3(server, 0);
		/* if client is gone, close connection */
		if (!server->clientHead)
			FUNC2(rdpSocket);
		if (FUNC0(rdpSocket, &fds))
			return 1;
	}
	return 0;
}