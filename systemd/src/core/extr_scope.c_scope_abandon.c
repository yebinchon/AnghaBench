
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int was_abandoned; int controller_track; int controller; int state; } ;
typedef TYPE_1__ Scope ;


 int EPERM ;
 int ESTALE ;
 int IN_SET (int ,int ,int ) ;
 int SCOPE_ABANDONED ;
 int SCOPE_RUNNING ;
 int SPECIAL_INIT_SCOPE ;
 int UNIT (TYPE_1__*) ;
 int assert (TYPE_1__*) ;
 int mfree (int ) ;
 int scope_set_state (TYPE_1__*,int ) ;
 int sd_bus_track_unref (int ) ;
 int unit_enqueue_rewatch_pids (int ) ;
 scalar_t__ unit_has_name (int ,int ) ;

int scope_abandon(Scope *s) {
        assert(s);

        if (unit_has_name(UNIT(s), SPECIAL_INIT_SCOPE))
                return -EPERM;

        if (!IN_SET(s->state, SCOPE_RUNNING, SCOPE_ABANDONED))
                return -ESTALE;

        s->was_abandoned = 1;

        s->controller = mfree(s->controller);
        s->controller_track = sd_bus_track_unref(s->controller_track);

        scope_set_state(s, SCOPE_ABANDONED);



        (void) unit_enqueue_rewatch_pids(UNIT(s));

        return 0;
}
