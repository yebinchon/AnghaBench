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
struct tmuxproc {int /*<<< orphan*/  ev_sigwinch; int /*<<< orphan*/  ev_sigusr2; int /*<<< orphan*/  ev_sigusr1; int /*<<< orphan*/  ev_sigterm; int /*<<< orphan*/  ev_sigcont; int /*<<< orphan*/  ev_sigchld; int /*<<< orphan*/  ev_sighup; } ;
struct sigaction {int /*<<< orphan*/  sa_handler; int /*<<< orphan*/  sa_flags; int /*<<< orphan*/  sa_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  SA_RESTART ; 
 int /*<<< orphan*/  SIGCHLD ; 
 int /*<<< orphan*/  SIGCONT ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIGTSTP ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  SIGUSR2 ; 
 int /*<<< orphan*/  SIGWINCH ; 
 int /*<<< orphan*/  SIG_DFL ; 
 int /*<<< orphan*/  FUNC0 (struct sigaction*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(struct tmuxproc *tp, int defaults)
{
	struct sigaction	sa;

	FUNC0(&sa, 0, sizeof sa);
	FUNC2(&sa.sa_mask);
	sa.sa_flags = SA_RESTART;
	sa.sa_handler = SIG_DFL;

	FUNC1(SIGINT, &sa, NULL);
	FUNC1(SIGPIPE, &sa, NULL);
	FUNC1(SIGTSTP, &sa, NULL);

	FUNC3(&tp->ev_sighup);
	FUNC3(&tp->ev_sigchld);
	FUNC3(&tp->ev_sigcont);
	FUNC3(&tp->ev_sigterm);
	FUNC3(&tp->ev_sigusr1);
	FUNC3(&tp->ev_sigusr2);
	FUNC3(&tp->ev_sigwinch);

	if (defaults) {
		FUNC1(SIGHUP, &sa, NULL);
		FUNC1(SIGCHLD, &sa, NULL);
		FUNC1(SIGCONT, &sa, NULL);
		FUNC1(SIGTERM, &sa, NULL);
		FUNC1(SIGUSR1, &sa, NULL);
		FUNC1(SIGUSR2, &sa, NULL);
		FUNC1(SIGWINCH, &sa, NULL);
	}
}