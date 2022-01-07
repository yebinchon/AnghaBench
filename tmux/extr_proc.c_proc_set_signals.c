
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmuxproc {void (* signalcb ) (int) ;int ev_sigwinch; int ev_sigusr2; int ev_sigusr1; int ev_sigterm; int ev_sigcont; int ev_sigchld; int ev_sighup; } ;
struct sigaction {int sa_handler; int sa_flags; int sa_mask; } ;


 int SA_RESTART ;
 int SIGCHLD ;
 int SIGCONT ;
 int SIGHUP ;
 int SIGINT ;
 int SIGPIPE ;
 int SIGTERM ;
 int SIGTSTP ;
 int SIGUSR1 ;
 int SIGUSR2 ;
 int SIGWINCH ;
 int SIG_IGN ;
 int memset (struct sigaction*,int ,int) ;
 int proc_signal_cb ;
 int sigaction (int ,struct sigaction*,int *) ;
 int sigemptyset (int *) ;
 int signal_add (int *,int *) ;
 int signal_set (int *,int ,int ,struct tmuxproc*) ;

void
proc_set_signals(struct tmuxproc *tp, void (*signalcb)(int))
{
 struct sigaction sa;

 tp->signalcb = signalcb;

 memset(&sa, 0, sizeof sa);
 sigemptyset(&sa.sa_mask);
 sa.sa_flags = SA_RESTART;
 sa.sa_handler = SIG_IGN;

 sigaction(SIGINT, &sa, ((void*)0));
 sigaction(SIGPIPE, &sa, ((void*)0));
 sigaction(SIGTSTP, &sa, ((void*)0));

 signal_set(&tp->ev_sighup, SIGHUP, proc_signal_cb, tp);
 signal_add(&tp->ev_sighup, ((void*)0));
 signal_set(&tp->ev_sigchld, SIGCHLD, proc_signal_cb, tp);
 signal_add(&tp->ev_sigchld, ((void*)0));
 signal_set(&tp->ev_sigcont, SIGCONT, proc_signal_cb, tp);
 signal_add(&tp->ev_sigcont, ((void*)0));
 signal_set(&tp->ev_sigterm, SIGTERM, proc_signal_cb, tp);
 signal_add(&tp->ev_sigterm, ((void*)0));
 signal_set(&tp->ev_sigusr1, SIGUSR1, proc_signal_cb, tp);
 signal_add(&tp->ev_sigusr1, ((void*)0));
 signal_set(&tp->ev_sigusr2, SIGUSR2, proc_signal_cb, tp);
 signal_add(&tp->ev_sigusr2, ((void*)0));
 signal_set(&tp->ev_sigwinch, SIGWINCH, proc_signal_cb, tp);
 signal_add(&tp->ev_sigwinch, ((void*)0));
}
