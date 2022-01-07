
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int Unit ;
struct TYPE_4__ {int state; } ;
typedef TYPE_1__ Scope ;


 scalar_t__ IN_SET (int ,int ,int ,int ,int ) ;
 TYPE_1__* SCOPE (int *) ;
 int SCOPE_ABANDONED ;
 int SCOPE_RUNNING ;
 int SCOPE_STOP_SIGKILL ;
 int SCOPE_STOP_SIGTERM ;
 int SCOPE_SUCCESS ;
 int assert (int *) ;
 int log_unit_debug (int *,char*) ;
 int scope_enter_dead (TYPE_1__*,int ) ;

__attribute__((used)) static void scope_notify_cgroup_empty_event(Unit *u) {
        Scope *s = SCOPE(u);
        assert(u);

        log_unit_debug(u, "cgroup is empty");

        if (IN_SET(s->state, SCOPE_RUNNING, SCOPE_ABANDONED, SCOPE_STOP_SIGTERM, SCOPE_STOP_SIGKILL))
                scope_enter_dead(s, SCOPE_SUCCESS);
}
