
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ handle_lid_switch_docked; scalar_t__ handle_lid_switch_ep; scalar_t__ handle_lid_switch; int lid_switch_ignore_inhibited; } ;
typedef TYPE_1__ Manager ;
typedef scalar_t__ HandleAction ;


 int INHIBIT_HANDLE_LID_SWITCH ;
 scalar_t__ _HANDLE_ACTION_INVALID ;
 int assert (TYPE_1__*) ;
 int manager_handle_action (TYPE_1__*,int ,scalar_t__,int ,int) ;
 scalar_t__ manager_is_docked_or_external_displays (TYPE_1__*) ;
 scalar_t__ manager_is_on_external_power () ;

__attribute__((used)) static void button_lid_switch_handle_action(Manager *manager, bool is_edge) {
        HandleAction handle_action;

        assert(manager);



        if (manager_is_docked_or_external_displays(manager))
                handle_action = manager->handle_lid_switch_docked;
        else if (manager->handle_lid_switch_ep != _HANDLE_ACTION_INVALID &&
                 manager_is_on_external_power())
                handle_action = manager->handle_lid_switch_ep;
        else
                handle_action = manager->handle_lid_switch;

        manager_handle_action(manager, INHIBIT_HANDLE_LID_SWITCH, handle_action, manager->lid_switch_ignore_inhibited, is_edge);
}
