
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int Unit ;
struct TYPE_7__ {scalar_t__ taint_logged; scalar_t__ ready_sent; } ;
typedef TYPE_1__ Manager ;


 int SPECIAL_BASIC_TARGET ;
 int UNIT_IS_ACTIVE_OR_RELOADING (int ) ;
 int assert (TYPE_1__*) ;
 int log_taint_string (TYPE_1__*) ;
 int * manager_get_unit (TYPE_1__*,int ) ;
 int manager_send_ready (TYPE_1__*) ;
 int unit_active_state (int *) ;

__attribute__((used)) static void manager_check_basic_target(Manager *m) {
        Unit *u;

        assert(m);


        if (m->ready_sent && m->taint_logged)
                return;

        u = manager_get_unit(m, SPECIAL_BASIC_TARGET);
        if (!u || !UNIT_IS_ACTIVE_OR_RELOADING(unit_active_state(u)))
                return;


        manager_send_ready(m);


        log_taint_string(m);
}
