
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int condition_result; int conditions; int condition_timestamp; } ;
typedef TYPE_1__ Unit ;


 int assert (TYPE_1__*) ;
 int condition_test_list (int ,int ,int ,TYPE_1__*) ;
 int condition_type_to_string ;
 int dual_timestamp_get (int *) ;
 int log_unit_internal ;
 int unit_add_to_dbus_queue (TYPE_1__*) ;

__attribute__((used)) static bool unit_test_condition(Unit *u) {
        assert(u);

        dual_timestamp_get(&u->condition_timestamp);
        u->condition_result = condition_test_list(u->conditions, condition_type_to_string, log_unit_internal, u);

        unit_add_to_dbus_queue(u);

        return u->condition_result;
}
