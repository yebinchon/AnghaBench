
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int kill_signal; int final_kill_signal; int watchdog_signal; } ;
typedef int KillOperation ;
typedef TYPE_1__ KillContext ;







 int assert (TYPE_1__ const*) ;
 int assert_not_reached (char*) ;
 int restart_kill_signal (TYPE_1__ const*) ;

__attribute__((used)) static int operation_to_signal(const KillContext *c, KillOperation k, bool *noteworthy) {
        assert(c);

        switch (k) {

        case 130:
        case 129:
                *noteworthy = 0;
                return c->kill_signal;

        case 131:
                *noteworthy = 0;
                return restart_kill_signal(c);

        case 132:
                *noteworthy = 1;
                return c->final_kill_signal;

        case 128:
                *noteworthy = 1;
                return c->watchdog_signal;

        default:
                assert_not_reached("KillOperation unknown");
        }
}
