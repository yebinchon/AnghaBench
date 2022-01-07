
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ state; } ;
typedef scalar_t__ DeviceState ;
typedef TYPE_1__ Device ;


 scalar_t__ DEVICE_DEAD ;
 int UNIT (TYPE_1__*) ;
 int assert (TYPE_1__*) ;
 int bus_unit_send_pending_change_signal (int ,int) ;
 int device_state_to_string (scalar_t__) ;
 int device_unset_sysfs (TYPE_1__*) ;
 int log_unit_debug (int ,char*,int ,int ) ;
 int * state_translation_table ;
 int unit_notify (int ,int ,int ,int ) ;

__attribute__((used)) static void device_set_state(Device *d, DeviceState state) {
        DeviceState old_state;
        assert(d);

        if (d->state != state)
                bus_unit_send_pending_change_signal(UNIT(d), 0);

        old_state = d->state;
        d->state = state;

        if (state == DEVICE_DEAD)
                device_unset_sysfs(d);

        if (state != old_state)
                log_unit_debug(UNIT(d), "Changed %s -> %s", device_state_to_string(old_state), device_state_to_string(state));

        unit_notify(UNIT(d), state_translation_table[old_state], state_translation_table[state], 0);
}
