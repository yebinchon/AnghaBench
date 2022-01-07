
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int UnitActiveState ;
struct TYPE_8__ {scalar_t__ load_state; scalar_t__ job; } ;
typedef TYPE_1__ Unit ;
struct TYPE_9__ {int (* clean ) (TYPE_1__*,int ) ;} ;
typedef int ExecCleanMask ;


 int EBUSY ;
 int EOPNOTSUPP ;
 int EUNATCH ;
 int IN_SET (int ,int ) ;
 int UNIT_INACTIVE ;
 scalar_t__ UNIT_LOADED ;
 TYPE_6__* UNIT_VTABLE (TYPE_1__*) ;
 int assert (TYPE_1__*) ;
 int stub1 (TYPE_1__*,int ) ;
 int unit_active_state (TYPE_1__*) ;

int unit_clean(Unit *u, ExecCleanMask mask) {
        UnitActiveState state;

        assert(u);
        if (!UNIT_VTABLE(u)->clean)
                return -EOPNOTSUPP;

        if (mask == 0)
                return -EUNATCH;

        if (u->load_state != UNIT_LOADED)
                return -EBUSY;

        if (u->job)
                return -EBUSY;

        state = unit_active_state(u);
        if (!IN_SET(state, UNIT_INACTIVE))
                return -EBUSY;

        return UNIT_VTABLE(u)->clean(u, mask);
}
