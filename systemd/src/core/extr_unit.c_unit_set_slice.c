
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ type; int slice; scalar_t__ cgroup_realized; } ;
typedef TYPE_1__ Unit ;


 int EBUSY ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int EPERM ;
 int SPECIAL_INIT_SCOPE ;
 int SPECIAL_ROOT_SLICE ;
 TYPE_1__* UNIT_DEREF (int ) ;
 int UNIT_HAS_CGROUP_CONTEXT (TYPE_1__*) ;
 scalar_t__ UNIT_INACTIVE ;
 scalar_t__ UNIT_ISSET (int ) ;
 scalar_t__ UNIT_SLICE ;
 int assert (TYPE_1__*) ;
 scalar_t__ unit_active_state (TYPE_1__*) ;
 scalar_t__ unit_has_name (TYPE_1__*,int ) ;
 int unit_ref_set (int *,TYPE_1__*,TYPE_1__*) ;

int unit_set_slice(Unit *u, Unit *slice) {
        assert(u);
        assert(slice);







        if (!UNIT_HAS_CGROUP_CONTEXT(u))
                return -EOPNOTSUPP;

        if (u->type == UNIT_SLICE)
                return -EINVAL;

        if (unit_active_state(u) != UNIT_INACTIVE)
                return -EBUSY;

        if (slice->type != UNIT_SLICE)
                return -EINVAL;

        if (unit_has_name(u, SPECIAL_INIT_SCOPE) &&
            !unit_has_name(slice, SPECIAL_ROOT_SLICE))
                return -EPERM;

        if (UNIT_DEREF(u->slice) == slice)
                return 0;


        if (UNIT_ISSET(u->slice) && u->cgroup_realized)
                return -EBUSY;

        unit_ref_set(&u->slice, u, slice);
        return 1;
}
