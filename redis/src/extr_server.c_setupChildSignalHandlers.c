
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_handler; scalar_t__ sa_flags; int sa_mask; } ;


 int SIGUSR1 ;
 int sigKillChildHandler ;
 int sigaction (int ,struct sigaction*,int *) ;
 int sigemptyset (int *) ;

void setupChildSignalHandlers(void) {
    struct sigaction act;



    sigemptyset(&act.sa_mask);
    act.sa_flags = 0;
    act.sa_handler = sigKillChildHandler;
    sigaction(SIGUSR1, &act, ((void*)0));
    return;
}
