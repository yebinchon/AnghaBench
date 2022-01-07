
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ type; void* ip_bpf_egress; void* ip_bpf_ingress; int ip_accounting_egress_map_fd; int ip_accounting_ingress_map_fd; void* ipv6_deny_map_fd; void* ipv4_deny_map_fd; void* ipv6_allow_map_fd; void* ipv4_allow_map_fd; } ;
typedef TYPE_1__ Unit ;
struct TYPE_13__ {int ip_accounting; } ;
typedef TYPE_2__ CGroupContext ;


 int ACCESS_ALLOWED ;
 int ACCESS_DENIED ;
 int BPF_FIREWALL_SUPPORTED_WITH_MULTI ;
 int BPF_FIREWALL_UNSUPPORTED ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int SYNTHETIC_ERRNO (int ) ;
 scalar_t__ UNIT_SLICE ;
 int assert (TYPE_1__*) ;
 int bpf_firewall_compile_bpf (TYPE_1__*,int,void**,int,int) ;
 int bpf_firewall_prepare_access_maps (TYPE_1__*,int ,void**,void**,int*) ;
 int bpf_firewall_prepare_accounting_maps (TYPE_1__*,int ,int *,int *) ;
 int bpf_firewall_supported () ;
 void* bpf_program_unref (void*) ;
 int log_unit_debug_errno (TYPE_1__*,int ,char*) ;
 int log_unit_error_errno (TYPE_1__*,int,char*) ;
 void* safe_close (void*) ;
 TYPE_2__* unit_get_cgroup_context (TYPE_1__*) ;

int bpf_firewall_compile(Unit *u) {
        CGroupContext *cc;
        int r, supported;
        bool ip_allow_any = 0, ip_deny_any = 0;

        assert(u);

        cc = unit_get_cgroup_context(u);
        if (!cc)
                return -EINVAL;

        supported = bpf_firewall_supported();
        if (supported < 0)
                return supported;
        if (supported == BPF_FIREWALL_UNSUPPORTED)
                return log_unit_debug_errno(u, SYNTHETIC_ERRNO(EOPNOTSUPP),
                                            "BPF firewalling not supported on this manager, proceeding without.");
        if (supported != BPF_FIREWALL_SUPPORTED_WITH_MULTI && u->type == UNIT_SLICE)





                return log_unit_debug_errno(u, SYNTHETIC_ERRNO(EOPNOTSUPP),
                                            "BPF_F_ALLOW_MULTI is not supported on this manager, not doing BPF firewall on slice units.");





        u->ip_bpf_ingress = bpf_program_unref(u->ip_bpf_ingress);
        u->ip_bpf_egress = bpf_program_unref(u->ip_bpf_egress);

        u->ipv4_allow_map_fd = safe_close(u->ipv4_allow_map_fd);
        u->ipv4_deny_map_fd = safe_close(u->ipv4_deny_map_fd);

        u->ipv6_allow_map_fd = safe_close(u->ipv6_allow_map_fd);
        u->ipv6_deny_map_fd = safe_close(u->ipv6_deny_map_fd);

        if (u->type != UNIT_SLICE) {






                r = bpf_firewall_prepare_access_maps(u, ACCESS_ALLOWED, &u->ipv4_allow_map_fd, &u->ipv6_allow_map_fd, &ip_allow_any);
                if (r < 0)
                        return log_unit_error_errno(u, r, "Preparation of eBPF allow maps failed: %m");

                r = bpf_firewall_prepare_access_maps(u, ACCESS_DENIED, &u->ipv4_deny_map_fd, &u->ipv6_deny_map_fd, &ip_deny_any);
                if (r < 0)
                        return log_unit_error_errno(u, r, "Preparation of eBPF deny maps failed: %m");
        }

        r = bpf_firewall_prepare_accounting_maps(u, cc->ip_accounting, &u->ip_accounting_ingress_map_fd, &u->ip_accounting_egress_map_fd);
        if (r < 0)
                return log_unit_error_errno(u, r, "Preparation of eBPF accounting maps failed: %m");

        r = bpf_firewall_compile_bpf(u, 1, &u->ip_bpf_ingress, ip_allow_any, ip_deny_any);
        if (r < 0)
                return log_unit_error_errno(u, r, "Compilation for ingress BPF program failed: %m");

        r = bpf_firewall_compile_bpf(u, 0, &u->ip_bpf_egress, ip_allow_any, ip_deny_any);
        if (r < 0)
                return log_unit_error_errno(u, r, "Compilation for egress BPF program failed: %m");

        return 0;
}
