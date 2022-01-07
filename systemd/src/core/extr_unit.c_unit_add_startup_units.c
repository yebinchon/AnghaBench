
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* manager; } ;
typedef TYPE_2__ Unit ;
struct TYPE_10__ {scalar_t__ startup_cpu_shares; scalar_t__ startup_io_weight; scalar_t__ startup_blockio_weight; } ;
struct TYPE_8__ {int startup_units; } ;
typedef TYPE_3__ CGroupContext ;


 scalar_t__ CGROUP_BLKIO_WEIGHT_INVALID ;
 scalar_t__ CGROUP_CPU_SHARES_INVALID ;
 scalar_t__ CGROUP_WEIGHT_INVALID ;
 int set_ensure_allocated (int *,int *) ;
 int set_put (int ,TYPE_2__*) ;
 TYPE_3__* unit_get_cgroup_context (TYPE_2__*) ;

__attribute__((used)) static int unit_add_startup_units(Unit *u) {
        CGroupContext *c;
        int r;

        c = unit_get_cgroup_context(u);
        if (!c)
                return 0;

        if (c->startup_cpu_shares == CGROUP_CPU_SHARES_INVALID &&
            c->startup_io_weight == CGROUP_WEIGHT_INVALID &&
            c->startup_blockio_weight == CGROUP_BLKIO_WEIGHT_INVALID)
                return 0;

        r = set_ensure_allocated(&u->manager->startup_units, ((void*)0));
        if (r < 0)
                return r;

        return set_put(u->manager->startup_units, u);
}
