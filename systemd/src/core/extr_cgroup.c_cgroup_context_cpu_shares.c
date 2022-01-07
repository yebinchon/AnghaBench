
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_3__ {scalar_t__ startup_cpu_shares; scalar_t__ cpu_shares; } ;
typedef int ManagerState ;
typedef TYPE_1__ CGroupContext ;


 scalar_t__ CGROUP_CPU_SHARES_DEFAULT ;
 scalar_t__ CGROUP_CPU_SHARES_INVALID ;
 scalar_t__ IN_SET (int ,int ,int ) ;
 int MANAGER_INITIALIZING ;
 int MANAGER_STARTING ;

__attribute__((used)) static uint64_t cgroup_context_cpu_shares(CGroupContext *c, ManagerState state) {
        if (IN_SET(state, MANAGER_STARTING, MANAGER_INITIALIZING) &&
            c->startup_cpu_shares != CGROUP_CPU_SHARES_INVALID)
                return c->startup_cpu_shares;
        else if (c->cpu_shares != CGROUP_CPU_SHARES_INVALID)
                return c->cpu_shares;
        else
                return CGROUP_CPU_SHARES_DEFAULT;
}
