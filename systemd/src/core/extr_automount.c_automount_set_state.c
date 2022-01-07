
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ state; } ;
typedef scalar_t__ AutomountState ;
typedef TYPE_1__ Automount ;


 scalar_t__ AUTOMOUNT_RUNNING ;
 int AUTOMOUNT_WAITING ;
 int IN_SET (scalar_t__,int ,scalar_t__) ;
 int UNIT (TYPE_1__*) ;
 int assert (TYPE_1__*) ;
 int automount_state_to_string (scalar_t__) ;
 int automount_stop_expire (TYPE_1__*) ;
 int bus_unit_send_pending_change_signal (int ,int) ;
 int log_unit_debug (int ,char*,int ,int ) ;
 int * state_translation_table ;
 int unit_notify (int ,int ,int ,int ) ;
 int unmount_autofs (TYPE_1__*) ;

__attribute__((used)) static void automount_set_state(Automount *a, AutomountState state) {
        AutomountState old_state;
        assert(a);

        if (a->state != state)
                bus_unit_send_pending_change_signal(UNIT(a), 0);

        old_state = a->state;
        a->state = state;

        if (state != AUTOMOUNT_RUNNING)
                automount_stop_expire(a);

        if (!IN_SET(state, AUTOMOUNT_WAITING, AUTOMOUNT_RUNNING))
                unmount_autofs(a);

        if (state != old_state)
                log_unit_debug(UNIT(a), "Changed %s -> %s", automount_state_to_string(old_state), automount_state_to_string(state));

        unit_notify(UNIT(a), state_translation_table[old_state], state_translation_table[state], 0);
}
