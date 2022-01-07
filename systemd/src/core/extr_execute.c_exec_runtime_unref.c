
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ n_ref; } ;
typedef TYPE_1__ ExecRuntime ;


 int assert (int) ;
 TYPE_1__* exec_runtime_free (TYPE_1__*,int) ;

ExecRuntime *exec_runtime_unref(ExecRuntime *rt, bool destroy) {
        if (!rt)
                return ((void*)0);

        assert(rt->n_ref > 0);

        rt->n_ref--;
        if (rt->n_ref > 0)
                return ((void*)0);

        return exec_runtime_free(rt, destroy);
}
