
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int id; } ;
struct TYPE_8__ {scalar_t__ state; } ;
typedef scalar_t__ SliceState ;
typedef TYPE_1__ Slice ;


 TYPE_2__* UNIT (TYPE_1__*) ;
 int assert (TYPE_1__*) ;
 int bus_unit_send_pending_change_signal (TYPE_2__*,int) ;
 int log_debug (char*,int ,int ,int ) ;
 int slice_state_to_string (scalar_t__) ;
 int * state_translation_table ;
 int unit_notify (TYPE_2__*,int ,int ,int ) ;

__attribute__((used)) static void slice_set_state(Slice *t, SliceState state) {
        SliceState old_state;
        assert(t);

        if (t->state != state)
                bus_unit_send_pending_change_signal(UNIT(t), 0);

        old_state = t->state;
        t->state = state;

        if (state != old_state)
                log_debug("%s changed %s -> %s",
                          UNIT(t)->id,
                          slice_state_to_string(old_state),
                          slice_state_to_string(state));

        unit_notify(UNIT(t), state_translation_table[old_state], state_translation_table[state], 0);
}
