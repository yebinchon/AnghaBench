
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_flags; scalar_t__ sa_handler; scalar_t__ sa_sigaction; } ;


 int SA_SIGINFO ;
 void* SIG_IGN ;
 scalar_t__ sigaction (int,int *,struct sigaction*) ;

__attribute__((used)) static bool signal_ignored (int signum)
{
    struct sigaction sa;

    if (sigaction (signum, ((void*)0), &sa))
        return 0;
    return ((sa.sa_flags & SA_SIGINFO)
            ? (void *)sa.sa_sigaction : (void *)sa.sa_handler) == SIG_IGN;
}
