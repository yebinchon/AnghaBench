
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int id; } ;
struct TYPE_10__ {scalar_t__ state; int timer_event_source; } ;
typedef scalar_t__ ScopeState ;
typedef TYPE_1__ Scope ;


 scalar_t__ IN_SET (scalar_t__,int ,int ) ;
 int SCOPE_DEAD ;
 int SCOPE_FAILED ;
 int SCOPE_STOP_SIGKILL ;
 int SCOPE_STOP_SIGTERM ;
 TYPE_2__* UNIT (TYPE_1__*) ;
 int assert (TYPE_1__*) ;
 int bus_unit_send_pending_change_signal (TYPE_2__*,int) ;
 int log_debug (char*,int ,int ,int ) ;
 int scope_state_to_string (scalar_t__) ;
 int sd_event_source_unref (int ) ;
 int * state_translation_table ;
 int unit_dequeue_rewatch_pids (TYPE_2__*) ;
 int unit_notify (TYPE_2__*,int ,int ,int ) ;
 int unit_unwatch_all_pids (TYPE_2__*) ;

__attribute__((used)) static void scope_set_state(Scope *s, ScopeState state) {
        ScopeState old_state;
        assert(s);

        if (s->state != state)
                bus_unit_send_pending_change_signal(UNIT(s), 0);

        old_state = s->state;
        s->state = state;

        if (!IN_SET(state, SCOPE_STOP_SIGTERM, SCOPE_STOP_SIGKILL))
                s->timer_event_source = sd_event_source_unref(s->timer_event_source);

        if (IN_SET(state, SCOPE_DEAD, SCOPE_FAILED)) {
                unit_unwatch_all_pids(UNIT(s));
                unit_dequeue_rewatch_pids(UNIT(s));
        }

        if (state != old_state)
                log_debug("%s changed %s -> %s", UNIT(s)->id, scope_state_to_string(old_state), scope_state_to_string(state));

        unit_notify(UNIT(s), state_translation_table[old_state], state_translation_table[state], 0);
}
