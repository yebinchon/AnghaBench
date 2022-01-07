
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int Unit ;
struct TYPE_2__ {int (* may_gc ) (int *) ;} ;


 int * UNIT_TRIGGER (int *) ;
 TYPE_1__* UNIT_VTABLE (int *) ;
 int assert (int *) ;
 int stub1 (int *) ;

__attribute__((used)) static bool automount_may_gc(Unit *u) {
        Unit *t;

        assert(u);

        t = UNIT_TRIGGER(u);
        if (!t)
                return 1;

        return UNIT_VTABLE(t)->may_gc(t);
}
