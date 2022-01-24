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
struct sigaction {int /*<<< orphan*/  sa_handler; int /*<<< orphan*/  sa_flags; int /*<<< orphan*/  sa_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLIENT_EXIT_LOST_TTY ; 
 int /*<<< orphan*/  CLIENT_EXIT_TERMINATED ; 
 int /*<<< orphan*/  MSG_EXITING ; 
 int /*<<< orphan*/  MSG_RESIZE ; 
 int /*<<< orphan*/  MSG_WAKEUP ; 
 int /*<<< orphan*/  SA_RESTART ; 
 int SIGCHLD ; 
#define  SIGCONT 131 
#define  SIGHUP 130 
#define  SIGTERM 129 
 int /*<<< orphan*/  SIGTSTP ; 
#define  SIGWINCH 128 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  WAIT_ANY ; 
 int /*<<< orphan*/  WNOHANG ; 
 int /*<<< orphan*/  client_attached ; 
 int /*<<< orphan*/  client_exitreason ; 
 int client_exitval ; 
 int /*<<< orphan*/  client_peer ; 
 int /*<<< orphan*/  client_proc ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sigaction*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(int sig)
{
	struct sigaction sigact;
	int		 status;

	if (sig == SIGCHLD)
		FUNC6(WAIT_ANY, &status, WNOHANG);
	else if (!client_attached) {
		if (sig == SIGTERM)
			FUNC2(client_proc);
	} else {
		switch (sig) {
		case SIGHUP:
			client_exitreason = CLIENT_EXIT_LOST_TTY;
			client_exitval = 1;
			FUNC3(client_peer, MSG_EXITING, -1, NULL, 0);
			break;
		case SIGTERM:
			client_exitreason = CLIENT_EXIT_TERMINATED;
			client_exitval = 1;
			FUNC3(client_peer, MSG_EXITING, -1, NULL, 0);
			break;
		case SIGWINCH:
			FUNC3(client_peer, MSG_RESIZE, -1, NULL, 0);
			break;
		case SIGCONT:
			FUNC1(&sigact, 0, sizeof sigact);
			FUNC5(&sigact.sa_mask);
			sigact.sa_flags = SA_RESTART;
			sigact.sa_handler = SIG_IGN;
			if (FUNC4(SIGTSTP, &sigact, NULL) != 0)
				FUNC0("sigaction failed");
			FUNC3(client_peer, MSG_WAKEUP, -1, NULL, 0);
			break;
		}
	}
}