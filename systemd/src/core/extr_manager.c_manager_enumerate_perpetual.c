
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t UnitType ;
struct TYPE_7__ {int (* enumerate_perpetual ) (TYPE_1__*) ;} ;
struct TYPE_6__ {scalar_t__ test_run_flags; } ;
typedef TYPE_1__ Manager ;


 scalar_t__ MANAGER_TEST_RUN_MINIMAL ;
 size_t _UNIT_TYPE_MAX ;
 int assert (TYPE_1__*) ;
 int log_debug (char*,int ) ;
 int stub1 (TYPE_1__*) ;
 int unit_type_supported (size_t) ;
 int unit_type_to_string (size_t) ;
 TYPE_2__** unit_vtable ;

__attribute__((used)) static void manager_enumerate_perpetual(Manager *m) {
        UnitType c;

        assert(m);

        if (m->test_run_flags == MANAGER_TEST_RUN_MINIMAL)
                return;


        for (c = 0; c < _UNIT_TYPE_MAX; c++) {
                if (!unit_type_supported(c)) {
                        log_debug("Unit type .%s is not supported on this system.", unit_type_to_string(c));
                        continue;
                }

                if (unit_vtable[c]->enumerate_perpetual)
                        unit_vtable[c]->enumerate_perpetual(m);
        }
}
