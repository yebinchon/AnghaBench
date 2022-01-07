
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ failure_action_exit_status; } ;
typedef TYPE_1__ Unit ;


 int EBADE ;
 int assert (TYPE_1__*) ;
 int unit_exit_status (TYPE_1__*) ;

int unit_failure_action_exit_status(Unit *u) {
        int r;

        assert(u);



        if (u->failure_action_exit_status >= 0)
                return u->failure_action_exit_status;

        r = unit_exit_status(u);
        if (r == -EBADE)
                return 255;

        return r;
}
