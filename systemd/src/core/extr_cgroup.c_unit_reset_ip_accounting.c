
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ip_accounting_ingress_map_fd; scalar_t__ ip_accounting_egress_map_fd; int ip_accounting_extra; } ;
typedef TYPE_1__ Unit ;


 int assert (TYPE_1__*) ;
 int bpf_firewall_reset_accounting (scalar_t__) ;
 int zero (int ) ;

int unit_reset_ip_accounting(Unit *u) {
        int r = 0, q = 0;

        assert(u);

        if (u->ip_accounting_ingress_map_fd >= 0)
                r = bpf_firewall_reset_accounting(u->ip_accounting_ingress_map_fd);

        if (u->ip_accounting_egress_map_fd >= 0)
                q = bpf_firewall_reset_accounting(u->ip_accounting_egress_map_fd);

        zero(u->ip_accounting_extra);

        return r < 0 ? r : q;
}
