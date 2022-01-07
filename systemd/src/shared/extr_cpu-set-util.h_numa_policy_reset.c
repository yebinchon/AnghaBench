
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type; int nodes; } ;
typedef TYPE_1__ NUMAPolicy ;


 int assert (TYPE_1__*) ;
 int cpu_set_reset (int *) ;

__attribute__((used)) static inline void numa_policy_reset(NUMAPolicy *p) {
        assert(p);
        cpu_set_reset(&p->nodes);
        p->type = -1;
}
