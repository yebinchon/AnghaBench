
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int assert_result; int asserts; int assert_timestamp; } ;
typedef TYPE_1__ Unit ;


 int assert (TYPE_1__*) ;
 int assert_type_to_string ;
 int condition_test_list (int ,int ,int ,TYPE_1__*) ;
 int dual_timestamp_get (int *) ;
 int log_unit_internal ;
 int unit_add_to_dbus_queue (TYPE_1__*) ;

__attribute__((used)) static bool unit_test_assert(Unit *u) {
        assert(u);

        dual_timestamp_get(&u->assert_timestamp);
        u->assert_result = condition_test_list(u->asserts, assert_type_to_string, log_unit_internal, u);

        unit_add_to_dbus_queue(u);

        return u->assert_result;
}
