
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int io_accounting_base; int * io_accounting_last; } ;
typedef TYPE_1__ Unit ;
typedef size_t CGroupIOAccountingMetric ;


 int UINT64_MAX ;
 size_t _CGROUP_IO_ACCOUNTING_METRIC_MAX ;
 int assert (TYPE_1__*) ;
 int unit_get_io_accounting_raw (TYPE_1__*,int ) ;
 int zero (int ) ;

int unit_reset_io_accounting(Unit *u) {
        int r;

        assert(u);

        for (CGroupIOAccountingMetric i = 0; i < _CGROUP_IO_ACCOUNTING_METRIC_MAX; i++)
                u->io_accounting_last[i] = UINT64_MAX;

        r = unit_get_io_accounting_raw(u, u->io_accounting_base);
        if (r < 0) {
                zero(u->io_accounting_base);
                return r;
        }

        return 0;
}
