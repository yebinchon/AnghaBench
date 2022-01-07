
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sigaction {int sa_flags; int sa_sigaction; int sa_mask; } ;
struct TYPE_2__ {int watchdog_period; int hz; } ;


 int SA_ONSTACK ;
 int SA_SIGINFO ;
 int SIGALRM ;
 TYPE_1__ server ;
 int sigaction (int ,struct sigaction*,int *) ;
 int sigemptyset (int *) ;
 int watchdogScheduleSignal (int) ;
 int watchdogSignalHandler ;

void enableWatchdog(int period) {
    int min_period;

    if (server.watchdog_period == 0) {
        struct sigaction act;



        sigemptyset(&act.sa_mask);
        act.sa_flags = SA_ONSTACK | SA_SIGINFO;
        act.sa_sigaction = watchdogSignalHandler;
        sigaction(SIGALRM, &act, ((void*)0));
    }



    min_period = (1000/server.hz)*2;
    if (period < min_period) period = min_period;
    watchdogScheduleSignal(period);
    server.watchdog_period = period;
}
