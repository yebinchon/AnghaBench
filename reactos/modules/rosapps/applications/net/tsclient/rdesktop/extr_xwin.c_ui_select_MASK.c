#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
typedef  int /*<<< orphan*/  fd_set ;
struct TYPE_9__ {int x_socket; scalar_t__ seamless_active; } ;
struct TYPE_10__ {int dsp_fd; scalar_t__ dsp_busy; TYPE_1__ xwin; } ;
typedef  TYPE_2__ RDPCLIENT ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ False ; 
 scalar_t__ True ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,struct timeval*) ; 
 int FUNC7 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 

int
FUNC12(RDPCLIENT * This, int rdp_socket)
{
	int n;
	fd_set rfds, wfds;
	struct timeval tv;
	BOOL s_timeout = False;

	while (True)
	{
		n = (rdp_socket > This->xwin.x_socket) ? rdp_socket : This->xwin.x_socket;
		/* Process any events already waiting */
		if (!FUNC11(This))
			/* User quit */
			return 0;

		if (This->xwin.seamless_active)
			FUNC9(This);

		FUNC2(&rfds);
		FUNC2(&wfds);
		FUNC1(rdp_socket, &rfds);
		FUNC1(This->xwin.x_socket, &rfds);

#ifdef WITH_RDPSND
		/* FIXME: there should be an API for registering fds */
		if (This->dsp_busy)
		{
			FD_SET(This->dsp_fd, &wfds);
			n = (This->dsp_fd > n) ? This->dsp_fd : n;
		}
#endif
		/* default timeout */
		tv.tv_sec = 60;
		tv.tv_usec = 0;

		/* add redirection handles */
		FUNC4(This, &n, &rfds, &wfds, &tv, &s_timeout);
		FUNC6(This, &tv);

		n++;

		switch (FUNC7(n, &rfds, &wfds, NULL, &tv))
		{
			case -1:
				FUNC3("select: %s\n", FUNC8(errno));

			case 0:
				/* Abort serial read calls */
				if (s_timeout)
					FUNC5(This, &rfds, &wfds, (BOOL) True);
				continue;
		}

		FUNC5(This, &rfds, &wfds, (BOOL) False);

		if (FUNC0(rdp_socket, &rfds))
			return 1;

#ifdef WITH_RDPSND
		if (This->dsp_busy && FD_ISSET(This->dsp_fd, &wfds))
			wave_out_play();
#endif
	}
}