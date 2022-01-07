
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmuxproc {int ev_sigwinch; int ev_sigusr2; int ev_sigusr1; int ev_sigterm; int ev_sigcont; int ev_sigchld; int ev_sighup; } ;
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
 int SIG_DFL ;
 int memset (struct sigaction*,int ,int) ;
 int sigaction (int ,struct sigaction*,int *) ;
 int sigemptyset (int *) ;
 int signal_del (int *) ;

void
proc_clear_signals(struct tmuxproc *tp, int defaults)
{
 struct sigaction sa;

 memset(&sa, 0, sizeof sa);
 sigemptyset(&sa.sa_mask);
 sa.sa_flags = SA_RESTART;
 sa.sa_handler = SIG_DFL;

 sigaction(SIGINT, &sa, ((void*)0));
 sigaction(SIGPIPE, &sa, ((void*)0));
 sigaction(SIGTSTP, &sa, ((void*)0));

 signal_del(&tp->ev_sighup);
 signal_del(&tp->ev_sigchld);
 signal_del(&tp->ev_sigcont);
 signal_del(&tp->ev_sigterm);
 signal_del(&tp->ev_sigusr1);
 signal_del(&tp->ev_sigusr2);
 signal_del(&tp->ev_sigwinch);

 if (defaults) {
  sigaction(SIGHUP, &sa, ((void*)0));
  sigaction(SIGCHLD, &sa, ((void*)0));
  sigaction(SIGCONT, &sa, ((void*)0));
  sigaction(SIGTERM, &sa, ((void*)0));
  sigaction(SIGUSR1, &sa, ((void*)0));
  sigaction(SIGUSR2, &sa, ((void*)0));
  sigaction(SIGWINCH, &sa, ((void*)0));
 }
}
