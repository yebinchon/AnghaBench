
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Unit ;


 int assert (int *) ;
 int unit_reset_cpu_accounting (int *) ;
 int unit_reset_io_accounting (int *) ;
 int unit_reset_ip_accounting (int *) ;

int unit_reset_accounting(Unit *u) {
        int r, q, v;

        assert(u);

        r = unit_reset_cpu_accounting(u);
        q = unit_reset_io_accounting(u);
        v = unit_reset_ip_accounting(u);

        return r < 0 ? r : q < 0 ? q : v;
}
