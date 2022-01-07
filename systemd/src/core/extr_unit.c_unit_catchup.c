
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int Unit ;
struct TYPE_2__ {int (* catchup ) (int *) ;} ;


 TYPE_1__* UNIT_VTABLE (int *) ;
 int assert (int *) ;
 int stub1 (int *) ;

void unit_catchup(Unit *u) {
        assert(u);

        if (UNIT_VTABLE(u)->catchup)
                UNIT_VTABLE(u)->catchup(u);
}
