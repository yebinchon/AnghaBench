
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int UnitActiveState ;
struct TYPE_9__ {scalar_t__ load_state; } ;
typedef TYPE_1__ Unit ;
struct TYPE_10__ {int (* active_state ) (TYPE_1__*) ;} ;


 scalar_t__ UNIT_MERGED ;
 TYPE_7__* UNIT_VTABLE (TYPE_1__*) ;
 int assert (TYPE_1__*) ;
 int stub1 (TYPE_1__*) ;
 TYPE_1__* unit_follow_merge (TYPE_1__*) ;

UnitActiveState unit_active_state(Unit *u) {
        assert(u);

        if (u->load_state == UNIT_MERGED)
                return unit_active_state(unit_follow_merge(u));





        return UNIT_VTABLE(u)->active_state(u);
}
