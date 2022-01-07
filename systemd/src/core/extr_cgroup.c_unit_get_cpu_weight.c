
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {int manager; } ;
typedef TYPE_1__ Unit ;
typedef int ManagerState ;
typedef int CGroupContext ;


 int CGROUP_WEIGHT_DEFAULT ;
 int cgroup_context_cpu_weight (int *,int ) ;
 int manager_state (int ) ;
 int * unit_get_cgroup_context (TYPE_1__*) ;

__attribute__((used)) static uint64_t unit_get_cpu_weight(Unit *u) {
        ManagerState state = manager_state(u->manager);
        CGroupContext *cc;

        cc = unit_get_cgroup_context(u);
        return cc ? cgroup_context_cpu_weight(cc, state) : CGROUP_WEIGHT_DEFAULT;
}
