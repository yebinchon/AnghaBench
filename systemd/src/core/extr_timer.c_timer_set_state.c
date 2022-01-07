
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ TimerState ;
struct TYPE_5__ {scalar_t__ state; void* next_elapse_realtime; void* next_elapse_monotonic_or_boottime; void* realtime_event_source; void* monotonic_event_source; } ;
typedef TYPE_1__ Timer ;


 scalar_t__ TIMER_WAITING ;
 int UNIT (TYPE_1__*) ;
 void* USEC_INFINITY ;
 int assert (TYPE_1__*) ;
 int bus_unit_send_pending_change_signal (int ,int) ;
 int log_unit_debug (int ,char*,int ,int ) ;
 void* sd_event_source_unref (void*) ;
 int * state_translation_table ;
 int timer_state_to_string (scalar_t__) ;
 int unit_notify (int ,int ,int ,int ) ;

__attribute__((used)) static void timer_set_state(Timer *t, TimerState state) {
        TimerState old_state;
        assert(t);

        if (t->state != state)
                bus_unit_send_pending_change_signal(UNIT(t), 0);

        old_state = t->state;
        t->state = state;

        if (state != TIMER_WAITING) {
                t->monotonic_event_source = sd_event_source_unref(t->monotonic_event_source);
                t->realtime_event_source = sd_event_source_unref(t->realtime_event_source);
                t->next_elapse_monotonic_or_boottime = USEC_INFINITY;
                t->next_elapse_realtime = USEC_INFINITY;
        }

        if (state != old_state)
                log_unit_debug(UNIT(t), "Changed %s -> %s", timer_state_to_string(old_state), timer_state_to_string(state));

        unit_notify(UNIT(t), state_translation_table[old_state], state_translation_table[state], 0);
}
