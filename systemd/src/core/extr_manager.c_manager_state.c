
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int Unit ;
struct TYPE_7__ {int failed_units; } ;
typedef int ManagerState ;
typedef TYPE_1__ Manager ;


 int MANAGER_DEGRADED ;
 int MANAGER_INITIALIZING ;
 int MANAGER_IS_FINISHED (TYPE_1__*) ;
 scalar_t__ MANAGER_IS_SYSTEM (TYPE_1__*) ;
 int MANAGER_MAINTENANCE ;
 int MANAGER_RUNNING ;
 int MANAGER_STARTING ;
 int MANAGER_STOPPING ;
 int SPECIAL_BASIC_TARGET ;
 int SPECIAL_EMERGENCY_TARGET ;
 int SPECIAL_RESCUE_TARGET ;
 int SPECIAL_SHUTDOWN_TARGET ;
 int UNIT_IS_ACTIVE_OR_RELOADING (int ) ;
 int assert (TYPE_1__*) ;
 int * manager_get_unit (TYPE_1__*,int ) ;
 scalar_t__ set_size (int ) ;
 scalar_t__ unit_active_or_pending (int *) ;
 int unit_active_state (int *) ;

ManagerState manager_state(Manager *m) {
        Unit *u;

        assert(m);


        if (!MANAGER_IS_FINISHED(m)) {

                u = manager_get_unit(m, SPECIAL_BASIC_TARGET);
                if (!u || !UNIT_IS_ACTIVE_OR_RELOADING(unit_active_state(u)))
                        return MANAGER_INITIALIZING;

                return MANAGER_STARTING;
        }


        u = manager_get_unit(m, SPECIAL_SHUTDOWN_TARGET);
        if (u && unit_active_or_pending(u))
                return MANAGER_STOPPING;

        if (MANAGER_IS_SYSTEM(m)) {

                u = manager_get_unit(m, SPECIAL_RESCUE_TARGET);
                if (u && unit_active_or_pending(u))
                        return MANAGER_MAINTENANCE;

                u = manager_get_unit(m, SPECIAL_EMERGENCY_TARGET);
                if (u && unit_active_or_pending(u))
                        return MANAGER_MAINTENANCE;
        }


        if (set_size(m->failed_units) > 0)
                return MANAGER_DEGRADED;

        return MANAGER_RUNNING;
}
