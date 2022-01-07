
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int ip_bpf_custom_egress; int ip_bpf_custom_ingress; } ;
typedef TYPE_1__ Unit ;
struct TYPE_10__ {scalar_t__ ip_filters_egress; scalar_t__ ip_filters_ingress; } ;
typedef TYPE_2__ CGroupContext ;


 int BPF_FIREWALL_SUPPORTED_WITH_MULTI ;
 int EOPNOTSUPP ;
 int SYNTHETIC_ERRNO (int ) ;
 int assert (TYPE_1__*) ;
 int bpf_firewall_supported () ;
 int load_bpf_progs_from_fs_to_set (TYPE_1__*,scalar_t__,int *) ;
 int log_unit_debug_errno (TYPE_1__*,int ,char*) ;
 TYPE_2__* unit_get_cgroup_context (TYPE_1__*) ;

int bpf_firewall_load_custom(Unit *u) {
        CGroupContext *cc;
        int r, supported;

        assert(u);

        cc = unit_get_cgroup_context(u);
        if (!cc)
                return 0;

        if (!(cc->ip_filters_ingress || cc->ip_filters_egress))
                return 0;

        supported = bpf_firewall_supported();
        if (supported < 0)
                return supported;

        if (supported != BPF_FIREWALL_SUPPORTED_WITH_MULTI)
                return log_unit_debug_errno(u, SYNTHETIC_ERRNO(EOPNOTSUPP), "BPF_F_ALLOW_MULTI not supported on this manager, cannot attach custom BPF programs.");

        r = load_bpf_progs_from_fs_to_set(u, cc->ip_filters_ingress, &u->ip_bpf_custom_ingress);
        if (r < 0)
                return r;
        r = load_bpf_progs_from_fs_to_set(u, cc->ip_filters_egress, &u->ip_bpf_custom_egress);
        if (r < 0)
                return r;

        return 0;
}
