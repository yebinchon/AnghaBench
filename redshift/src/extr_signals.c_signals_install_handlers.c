
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {scalar_t__ sa_flags; void* sa_mask; int sa_handler; } ;
typedef void* sigset_t ;


 int SIGCHLD ;
 int SIGINT ;
 int SIGTERM ;
 int SIGUSR1 ;
 int SIG_IGN ;
 int perror (char*) ;
 int sigaction (int ,struct sigaction*,int *) ;
 int sigdisable ;
 int sigemptyset (void**) ;
 int sigexit ;

int
signals_install_handlers(void)
{
 return 0;
}
