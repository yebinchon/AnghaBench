
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ cpu_usage_base; int cpu_usage_last; } ;
typedef TYPE_1__ Unit ;


 int NSEC_INFINITY ;
 int assert (TYPE_1__*) ;
 int unit_get_cpu_usage_raw (TYPE_1__*,scalar_t__*) ;

int unit_reset_cpu_accounting(Unit *u) {
        int r;

        assert(u);

        u->cpu_usage_last = NSEC_INFINITY;

        r = unit_get_cpu_usage_raw(u, &u->cpu_usage_base);
        if (r < 0) {
                u->cpu_usage_base = 0;
                return r;
        }

        return 0;
}
