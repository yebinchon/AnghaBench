
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ type; } ;
typedef TYPE_1__ Unit ;
struct TYPE_10__ {int (* done ) (TYPE_1__*) ;} ;
typedef int ExecContext ;
typedef int CGroupContext ;


 TYPE_7__* UNIT_VTABLE (TYPE_1__*) ;
 int assert (TYPE_1__*) ;
 int cgroup_context_done (int *) ;
 int exec_context_done (int *) ;
 int stub1 (TYPE_1__*) ;
 int * unit_get_cgroup_context (TYPE_1__*) ;
 int * unit_get_exec_context (TYPE_1__*) ;

__attribute__((used)) static void unit_done(Unit *u) {
        ExecContext *ec;
        CGroupContext *cc;

        assert(u);

        if (u->type < 0)
                return;

        if (UNIT_VTABLE(u)->done)
                UNIT_VTABLE(u)->done(u);

        ec = unit_get_exec_context(u);
        if (ec)
                exec_context_done(ec);

        cc = unit_get_cgroup_context(u);
        if (cc)
                cgroup_context_done(cc);
}
