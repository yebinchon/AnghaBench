
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ nsec_t ;
struct TYPE_6__ {scalar_t__ cpu_usage_last; scalar_t__ cpu_usage_base; } ;
typedef TYPE_1__ Unit ;


 int ENODATA ;
 scalar_t__ NSEC_INFINITY ;
 int UNIT_CGROUP_BOOL (TYPE_1__*,int ) ;
 int assert (TYPE_1__*) ;
 int cpu_accounting ;
 int unit_get_cpu_usage_raw (TYPE_1__*,scalar_t__*) ;

int unit_get_cpu_usage(Unit *u, nsec_t *ret) {
        nsec_t ns;
        int r;

        assert(u);





        if (!UNIT_CGROUP_BOOL(u, cpu_accounting))
                return -ENODATA;

        r = unit_get_cpu_usage_raw(u, &ns);
        if (r == -ENODATA && u->cpu_usage_last != NSEC_INFINITY) {



                if (ret)
                        *ret = u->cpu_usage_last;
                return 0;
        }
        if (r < 0)
                return r;

        if (ns > u->cpu_usage_base)
                ns -= u->cpu_usage_base;
        else
                ns = 0;

        u->cpu_usage_last = ns;
        if (ret)
                *ret = ns;

        return 0;
}
