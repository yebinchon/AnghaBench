
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int Unit ;
struct TYPE_4__ {int delegate_controllers; } ;
typedef int ExecContext ;
typedef int CGroupMask ;
typedef TYPE_1__ CGroupContext ;


 int CGROUP_MASK_EXTEND_JOINED (int ) ;
 int assert_se (TYPE_1__*) ;
 scalar_t__ cg_all_unified () ;
 int exec_context_maintains_privileges (int *) ;
 int unit_cgroup_delegate (int *) ;
 TYPE_1__* unit_get_cgroup_context (int *) ;
 int * unit_get_exec_context (int *) ;

CGroupMask unit_get_delegate_mask(Unit *u) {
        CGroupContext *c;






        if (!unit_cgroup_delegate(u))
                return 0;

        if (cg_all_unified() <= 0) {
                ExecContext *e;

                e = unit_get_exec_context(u);
                if (e && !exec_context_maintains_privileges(e))
                        return 0;
        }

        assert_se(c = unit_get_cgroup_context(u));
        return CGROUP_MASK_EXTEND_JOINED(c->delegate_controllers);
}
