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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint32 ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  fd_set ;
typedef  int /*<<< orphan*/  addr ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ rfbClientSocket ; 
 int FUNC11 (int) ; 
 int rfb_port ; 
 scalar_t__ FUNC12 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 

void
FUNC16(char *server, uint32 flags, char *domain, char *password,
		char *shell, char *directory)
{
	struct sockaddr addr;
	fd_set fdset;
	struct timeval tv;
	int rfbListenSock, addrlen = sizeof(addr);

	rfbListenSock = FUNC11(rfb_port);
	FUNC6(stderr, "Listening on VNC port %d\n", rfb_port);
	if (rfbListenSock <= 0)
		FUNC3("Cannot listen on port %d", rfb_port);
	else
		while (1)
		{
			FUNC1(&fdset);
			FUNC0(rfbListenSock, &fdset);
			tv.tv_sec = 5;
			tv.tv_usec = 0;
			if (FUNC12(rfbListenSock + 1, &fdset, NULL, NULL, &tv) > 0)
			{
				rfbClientSocket = FUNC2(rfbListenSock, &addr, &addrlen);
				if (rfbClientSocket < 0)
				{
					FUNC3("Error accepting client (%d: %s.\n",
					      errno, FUNC13(errno));
					continue;
				}
				FUNC14();
				if (!FUNC8(server, flags, domain, password, shell, directory))
				{
					FUNC3("Error connecting to RDP server.\n");
					continue;
				}
				if (!FUNC5())
				{
					BOOL deactivated;
					uint32_t ext_disc_reason;
					FUNC7("Connection successful.\n");
					FUNC10(&deactivated, &ext_disc_reason);
					FUNC7("Disconnecting...\n");
					FUNC9();
					FUNC15();
					FUNC4(0);
				}
			}
		}
}