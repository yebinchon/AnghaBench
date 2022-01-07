
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ load_state; } ;
typedef TYPE_1__ Unit ;
struct TYPE_12__ {scalar_t__ state; int inotify_triggered; } ;
typedef TYPE_2__ Path ;


 TYPE_2__* PATH (TYPE_1__*) ;
 scalar_t__ PATH_RUNNING ;
 int UNIT (TYPE_2__*) ;
 scalar_t__ UNIT_IS_INACTIVE_OR_FAILED (int ) ;
 scalar_t__ UNIT_LOADED ;
 int assert (TYPE_1__*) ;
 int log_unit_debug (int ,char*) ;
 int path_enter_waiting (TYPE_2__*,int,int ) ;
 int unit_active_state (TYPE_1__*) ;

__attribute__((used)) static void path_trigger_notify(Unit *u, Unit *other) {
        Path *p = PATH(u);

        assert(u);
        assert(other);




        if (other->load_state != UNIT_LOADED)
                return;

        if (p->state == PATH_RUNNING &&
            UNIT_IS_INACTIVE_OR_FAILED(unit_active_state(other))) {
                log_unit_debug(UNIT(p), "Got notified about unit deactivation.");




                path_enter_waiting(p, 0, p->inotify_triggered);
        }
}
