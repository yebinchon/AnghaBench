
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int Unit ;
struct TYPE_2__ {int * (* following ) (int *) ;} ;


 TYPE_1__* UNIT_VTABLE (int *) ;
 int assert (int *) ;
 int * stub1 (int *) ;

Unit *unit_following(Unit *u) {
        assert(u);

        if (UNIT_VTABLE(u)->following)
                return UNIT_VTABLE(u)->following(u);

        return ((void*)0);
}
