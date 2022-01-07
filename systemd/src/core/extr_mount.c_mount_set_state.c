
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ state; scalar_t__ reload_result; int control_command_id; int * control_command; int timer_event_source; } ;
typedef scalar_t__ MountState ;
typedef TYPE_1__ Mount ;


 int MOUNT_STATE_WITH_PROCESS (scalar_t__) ;
 scalar_t__ MOUNT_SUCCESS ;
 int UNIT (TYPE_1__*) ;
 int UNIT_NOTIFY_RELOAD_FAILURE ;
 int _MOUNT_EXEC_COMMAND_INVALID ;
 int assert (TYPE_1__*) ;
 int bus_unit_send_pending_change_signal (int ,int) ;
 int log_unit_debug (int ,char*,int ,int ) ;
 int mount_state_to_string (scalar_t__) ;
 int mount_unwatch_control_pid (TYPE_1__*) ;
 int sd_event_source_unref (int ) ;
 int * state_translation_table ;
 int unit_notify (int ,int ,int ,int ) ;

__attribute__((used)) static void mount_set_state(Mount *m, MountState state) {
        MountState old_state;
        assert(m);

        if (m->state != state)
                bus_unit_send_pending_change_signal(UNIT(m), 0);

        old_state = m->state;
        m->state = state;

        if (!MOUNT_STATE_WITH_PROCESS(state)) {
                m->timer_event_source = sd_event_source_unref(m->timer_event_source);
                mount_unwatch_control_pid(m);
                m->control_command = ((void*)0);
                m->control_command_id = _MOUNT_EXEC_COMMAND_INVALID;
        }

        if (state != old_state)
                log_unit_debug(UNIT(m), "Changed %s -> %s", mount_state_to_string(old_state), mount_state_to_string(state));

        unit_notify(UNIT(m), state_translation_table[old_state], state_translation_table[state],
                    m->reload_result == MOUNT_SUCCESS ? 0 : UNIT_NOTIFY_RELOAD_FAILURE);
}
