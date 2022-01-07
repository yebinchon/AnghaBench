
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int slice; } ;
typedef TYPE_1__ Unit ;
struct TYPE_9__ {scalar_t__ ip_address_deny; scalar_t__ ip_address_allow; scalar_t__ ip_filters_egress; scalar_t__ ip_filters_ingress; scalar_t__ ip_accounting; } ;
typedef TYPE_2__ CGroupContext ;


 TYPE_1__* UNIT_DEREF (int ) ;
 int assert (TYPE_1__*) ;
 TYPE_2__* unit_get_cgroup_context (TYPE_1__*) ;

__attribute__((used)) static bool unit_get_needs_bpf_firewall(Unit *u) {
        CGroupContext *c;
        Unit *p;
        assert(u);

        c = unit_get_cgroup_context(u);
        if (!c)
                return 0;

        if (c->ip_accounting ||
            c->ip_address_allow ||
            c->ip_address_deny ||
            c->ip_filters_ingress ||
            c->ip_filters_egress)
                return 1;


        for (p = UNIT_DEREF(u->slice); p; p = UNIT_DEREF(p->slice)) {
                c = unit_get_cgroup_context(p);
                if (!c)
                        return 0;

                if (c->ip_address_allow ||
                    c->ip_address_deny)
                        return 1;
        }

        return 0;
}
