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
struct tmuxproc {void (* signalcb ) (int) ;int /*<<< orphan*/  ev_sigwinch; int /*<<< orphan*/  ev_sigusr2; int /*<<< orphan*/  ev_sigusr1; int /*<<< orphan*/  ev_sigterm; int /*<<< orphan*/  ev_sigcont; int /*<<< orphan*/  ev_sigchld; int /*<<< orphan*/  ev_sighup; } ;
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
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  FUNC0 (struct sigaction*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  proc_signal_cb ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tmuxproc*) ; 

void
FUNC5(struct tmuxproc *tp, void (*signalcb)(int))
{
	struct sigaction	sa;

	tp->signalcb = signalcb;

	FUNC0(&sa, 0, sizeof sa);
	FUNC2(&sa.sa_mask);
	sa.sa_flags = SA_RESTART;
	sa.sa_handler = SIG_IGN;

	FUNC1(SIGINT, &sa, NULL);
	FUNC1(SIGPIPE, &sa, NULL);
	FUNC1(SIGTSTP, &sa, NULL);

	FUNC4(&tp->ev_sighup, SIGHUP, proc_signal_cb, tp);
	FUNC3(&tp->ev_sighup, NULL);
	FUNC4(&tp->ev_sigchld, SIGCHLD, proc_signal_cb, tp);
	FUNC3(&tp->ev_sigchld, NULL);
	FUNC4(&tp->ev_sigcont, SIGCONT, proc_signal_cb, tp);
	FUNC3(&tp->ev_sigcont, NULL);
	FUNC4(&tp->ev_sigterm, SIGTERM, proc_signal_cb, tp);
	FUNC3(&tp->ev_sigterm, NULL);
	FUNC4(&tp->ev_sigusr1, SIGUSR1, proc_signal_cb, tp);
	FUNC3(&tp->ev_sigusr1, NULL);
	FUNC4(&tp->ev_sigusr2, SIGUSR2, proc_signal_cb, tp);
	FUNC3(&tp->ev_sigusr2, NULL);
	FUNC4(&tp->ev_sigwinch, SIGWINCH, proc_signal_cb, tp);
	FUNC3(&tp->ev_sigwinch, NULL);
}