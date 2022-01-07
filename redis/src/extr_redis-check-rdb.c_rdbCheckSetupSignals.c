
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_flags; int sa_sigaction; int sa_mask; } ;


 int SA_NODEFER ;
 int SA_RESETHAND ;
 int SA_SIGINFO ;
 int SIGBUS ;
 int SIGFPE ;
 int SIGILL ;
 int SIGSEGV ;
 int rdbCheckHandleCrash ;
 int sigaction (int ,struct sigaction*,int *) ;
 int sigemptyset (int *) ;

void rdbCheckSetupSignals(void) {
    struct sigaction act;

    sigemptyset(&act.sa_mask);
    act.sa_flags = SA_NODEFER | SA_RESETHAND | SA_SIGINFO;
    act.sa_sigaction = rdbCheckHandleCrash;
    sigaction(SIGSEGV, &act, ((void*)0));
    sigaction(SIGBUS, &act, ((void*)0));
    sigaction(SIGFPE, &act, ((void*)0));
    sigaction(SIGILL, &act, ((void*)0));
}
