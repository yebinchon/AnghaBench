
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {scalar_t__ type; } ;
typedef TYPE_1__ Unit ;
struct TYPE_6__ {size_t cgroup_context_offset; } ;
typedef int CGroupContext ;


 TYPE_3__* UNIT_VTABLE (TYPE_1__*) ;

CGroupContext *unit_get_cgroup_context(Unit *u) {
        size_t offset;

        if (u->type < 0)
                return ((void*)0);

        offset = UNIT_VTABLE(u)->cgroup_context_offset;
        if (offset <= 0)
                return ((void*)0);

        return (CGroupContext*) ((uint8_t*) u + offset);
}
