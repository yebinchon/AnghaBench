
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ cpu_shares; scalar_t__ startup_cpu_shares; } ;
typedef TYPE_1__ CGroupContext ;


 scalar_t__ CGROUP_CPU_SHARES_INVALID ;

__attribute__((used)) static bool cgroup_context_has_cpu_shares(CGroupContext *c) {
        return c->cpu_shares != CGROUP_CPU_SHARES_INVALID ||
                c->startup_cpu_shares != CGROUP_CPU_SHARES_INVALID;
}
