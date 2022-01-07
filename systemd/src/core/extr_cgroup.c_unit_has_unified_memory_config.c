
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ memory_high; scalar_t__ memory_max; scalar_t__ memory_swap_max; } ;
typedef TYPE_1__ Unit ;
typedef TYPE_1__ CGroupContext ;


 scalar_t__ CGROUP_LIMIT_MAX ;
 int assert (TYPE_1__*) ;
 scalar_t__ unit_get_ancestor_memory_low (TYPE_1__*) ;
 scalar_t__ unit_get_ancestor_memory_min (TYPE_1__*) ;
 TYPE_1__* unit_get_cgroup_context (TYPE_1__*) ;

__attribute__((used)) static bool unit_has_unified_memory_config(Unit *u) {
        CGroupContext *c;

        assert(u);

        c = unit_get_cgroup_context(u);
        assert(c);

        return unit_get_ancestor_memory_min(u) > 0 || unit_get_ancestor_memory_low(u) > 0 ||
               c->memory_high != CGROUP_LIMIT_MAX || c->memory_max != CGROUP_LIMIT_MAX ||
               c->memory_swap_max != CGROUP_LIMIT_MAX;
}
