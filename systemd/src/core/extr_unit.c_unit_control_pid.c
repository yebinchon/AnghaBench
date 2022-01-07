
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pid_t ;
typedef int Unit ;
struct TYPE_2__ {int (* control_pid ) (int *) ;} ;


 TYPE_1__* UNIT_VTABLE (int *) ;
 int assert (int *) ;
 int stub1 (int *) ;

pid_t unit_control_pid(Unit *u) {
        assert(u);

        if (UNIT_VTABLE(u)->control_pid)
                return UNIT_VTABLE(u)->control_pid(u);

        return 0;
}
