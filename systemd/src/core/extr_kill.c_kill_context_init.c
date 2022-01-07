
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int send_sigkill; int send_sighup; int watchdog_signal; int final_kill_signal; int kill_signal; } ;
typedef TYPE_1__ KillContext ;


 int SIGABRT ;
 int SIGKILL ;
 int SIGTERM ;
 int assert (TYPE_1__*) ;

void kill_context_init(KillContext *c) {
        assert(c);

        c->kill_signal = SIGTERM;

        c->final_kill_signal = SIGKILL;
        c->send_sigkill = 1;
        c->send_sighup = 0;
        c->watchdog_signal = SIGABRT;
}
