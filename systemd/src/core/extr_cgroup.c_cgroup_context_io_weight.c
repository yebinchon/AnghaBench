
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_3__ {scalar_t__ startup_io_weight; scalar_t__ io_weight; } ;
typedef int ManagerState ;
typedef TYPE_1__ CGroupContext ;


 scalar_t__ CGROUP_WEIGHT_DEFAULT ;
 scalar_t__ CGROUP_WEIGHT_INVALID ;
 scalar_t__ IN_SET (int ,int ,int ) ;
 int MANAGER_INITIALIZING ;
 int MANAGER_STARTING ;

__attribute__((used)) static uint64_t cgroup_context_io_weight(CGroupContext *c, ManagerState state) {
        if (IN_SET(state, MANAGER_STARTING, MANAGER_INITIALIZING) &&
            c->startup_io_weight != CGROUP_WEIGHT_INVALID)
                return c->startup_io_weight;
        else if (c->io_weight != CGROUP_WEIGHT_INVALID)
                return c->io_weight;
        else
                return CGROUP_WEIGHT_DEFAULT;
}
