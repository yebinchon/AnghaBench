
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int Unit ;
struct TYPE_2__ {int (* exit_status ) (int *) ;} ;


 int EOPNOTSUPP ;
 TYPE_1__* UNIT_VTABLE (int *) ;
 int assert (int *) ;
 int stub1 (int *) ;

int unit_exit_status(Unit *u) {
        assert(u);






        if (!UNIT_VTABLE(u)->exit_status)
                return -EOPNOTSUPP;

        return UNIT_VTABLE(u)->exit_status(u);
}
