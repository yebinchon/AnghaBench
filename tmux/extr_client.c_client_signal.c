
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_handler; int sa_flags; int sa_mask; } ;


 int CLIENT_EXIT_LOST_TTY ;
 int CLIENT_EXIT_TERMINATED ;
 int MSG_EXITING ;
 int MSG_RESIZE ;
 int MSG_WAKEUP ;
 int SA_RESTART ;
 int SIGCHLD ;



 int SIGTSTP ;

 int SIG_IGN ;
 int WAIT_ANY ;
 int WNOHANG ;
 int client_attached ;
 int client_exitreason ;
 int client_exitval ;
 int client_peer ;
 int client_proc ;
 int fatal (char*) ;
 int memset (struct sigaction*,int ,int) ;
 int proc_exit (int ) ;
 int proc_send (int ,int ,int,int *,int ) ;
 int sigaction (int ,struct sigaction*,int *) ;
 int sigemptyset (int *) ;
 int waitpid (int ,int*,int ) ;

__attribute__((used)) static void
client_signal(int sig)
{
 struct sigaction sigact;
 int status;

 if (sig == SIGCHLD)
  waitpid(WAIT_ANY, &status, WNOHANG);
 else if (!client_attached) {
  if (sig == 129)
   proc_exit(client_proc);
 } else {
  switch (sig) {
  case 130:
   client_exitreason = CLIENT_EXIT_LOST_TTY;
   client_exitval = 1;
   proc_send(client_peer, MSG_EXITING, -1, ((void*)0), 0);
   break;
  case 129:
   client_exitreason = CLIENT_EXIT_TERMINATED;
   client_exitval = 1;
   proc_send(client_peer, MSG_EXITING, -1, ((void*)0), 0);
   break;
  case 128:
   proc_send(client_peer, MSG_RESIZE, -1, ((void*)0), 0);
   break;
  case 131:
   memset(&sigact, 0, sizeof sigact);
   sigemptyset(&sigact.sa_mask);
   sigact.sa_flags = SA_RESTART;
   sigact.sa_handler = SIG_IGN;
   if (sigaction(SIGTSTP, &sigact, ((void*)0)) != 0)
    fatal("sigaction failed");
   proc_send(client_peer, MSG_WAKEUP, -1, ((void*)0), 0);
   break;
  }
 }
}
