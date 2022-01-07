
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sigaction {int sa_handler; scalar_t__ sa_flags; int sa_mask; } ;
struct TYPE_2__ {scalar_t__ watchdog_period; } ;


 int SIGALRM ;
 int SIG_IGN ;
 TYPE_1__ server ;
 int sigaction (int ,struct sigaction*,int *) ;
 int sigemptyset (int *) ;
 int watchdogScheduleSignal (int ) ;

void disableWatchdog(void) {
    struct sigaction act;
    if (server.watchdog_period == 0) return;
    watchdogScheduleSignal(0);



    sigemptyset(&act.sa_mask);
    act.sa_flags = 0;
    act.sa_handler = SIG_IGN;
    sigaction(SIGALRM, &act, ((void*)0));
    server.watchdog_period = 0;
}
