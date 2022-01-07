
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ state; scalar_t__ inotify_triggered; } ;
typedef scalar_t__ PathState ;
typedef TYPE_1__ Path ;


 scalar_t__ PATH_RUNNING ;
 scalar_t__ PATH_WAITING ;
 int UNIT (TYPE_1__*) ;
 int assert (TYPE_1__*) ;
 int bus_unit_send_pending_change_signal (int ,int) ;
 int log_unit_debug (int ,char*,int ,int ) ;
 int path_state_to_string (scalar_t__) ;
 int path_unwatch (TYPE_1__*) ;
 int * state_translation_table ;
 int unit_notify (int ,int ,int ,int ) ;

__attribute__((used)) static void path_set_state(Path *p, PathState state) {
        PathState old_state;
        assert(p);

        if (p->state != state)
                bus_unit_send_pending_change_signal(UNIT(p), 0);

        old_state = p->state;
        p->state = state;

        if (state != PATH_WAITING &&
            (state != PATH_RUNNING || p->inotify_triggered))
                path_unwatch(p);

        if (state != old_state)
                log_unit_debug(UNIT(p), "Changed %s -> %s", path_state_to_string(old_state), path_state_to_string(state));

        unit_notify(UNIT(p), state_translation_table[old_state], state_translation_table[state], 0);
}
