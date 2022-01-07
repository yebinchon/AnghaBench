
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int start_limit_hit; int reboot_arg; int start_limit_action; int manager; int id; int start_ratelimit; } ;
typedef TYPE_1__ Unit ;


 int ECANCELED ;
 int EMERGENCY_ACTION_IS_WATCHDOG ;
 int EMERGENCY_ACTION_WARN ;
 int assert (TYPE_1__*) ;
 int emergency_action (int ,int ,int,int ,int,char const*) ;
 int log_unit_warning (TYPE_1__*,char*) ;
 scalar_t__ ratelimit_below (int *) ;
 char* strjoina (char*,int ,char*) ;

int unit_test_start_limit(Unit *u) {
        const char *reason;

        assert(u);

        if (ratelimit_below(&u->start_ratelimit)) {
                u->start_limit_hit = 0;
                return 0;
        }

        log_unit_warning(u, "Start request repeated too quickly.");
        u->start_limit_hit = 1;

        reason = strjoina("unit ", u->id, " failed");

        emergency_action(u->manager, u->start_limit_action,
                         EMERGENCY_ACTION_IS_WATCHDOG|EMERGENCY_ACTION_WARN,
                         u->reboot_arg, -1, reason);

        return -ECANCELED;
}
