#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ type; void* ip_bpf_egress; void* ip_bpf_ingress; int /*<<< orphan*/  ip_accounting_egress_map_fd; int /*<<< orphan*/  ip_accounting_ingress_map_fd; void* ipv6_deny_map_fd; void* ipv4_deny_map_fd; void* ipv6_allow_map_fd; void* ipv4_allow_map_fd; } ;
typedef  TYPE_1__ Unit ;
struct TYPE_13__ {int /*<<< orphan*/  ip_accounting; } ;
typedef  TYPE_2__ CGroupContext ;

/* Variables and functions */
 int /*<<< orphan*/  ACCESS_ALLOWED ; 
 int /*<<< orphan*/  ACCESS_DENIED ; 
 int BPF_FIREWALL_SUPPORTED_WITH_MULTI ; 
 int BPF_FIREWALL_UNSUPPORTED ; 
 int EINVAL ; 
 int /*<<< orphan*/  EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ UNIT_SLICE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*,int,void**,int,int) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,void**,void**,int*) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 () ; 
 void* FUNC6 (void*) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int FUNC8 (TYPE_1__*,int,char*) ; 
 void* FUNC9 (void*) ; 
 TYPE_2__* FUNC10 (TYPE_1__*) ; 

int FUNC11(Unit *u) {
        CGroupContext *cc;
        int r, supported;
        bool ip_allow_any = false, ip_deny_any = false;

        FUNC1(u);

        cc = FUNC10(u);
        if (!cc)
                return -EINVAL;

        supported = FUNC5();
        if (supported < 0)
                return supported;
        if (supported == BPF_FIREWALL_UNSUPPORTED)
                return FUNC7(u, FUNC0(EOPNOTSUPP),
                                            "BPF firewalling not supported on this manager, proceeding without.");
        if (supported != BPF_FIREWALL_SUPPORTED_WITH_MULTI && u->type == UNIT_SLICE)
                /* If BPF_F_ALLOW_MULTI is not supported we don't support any BPF magic on inner nodes (i.e. on slice
                 * units), since that would mean leaf nodes couldn't do any BPF anymore at all. Under the assumption
                 * that BPF is more interesting on leaf nodes we hence avoid it on inner nodes in that case. This is
                 * consistent with old systemd behaviour from before v238, where BPF wasn't supported in inner nodes at
                 * all, either. */
                return FUNC7(u, FUNC0(EOPNOTSUPP),
                                            "BPF_F_ALLOW_MULTI is not supported on this manager, not doing BPF firewall on slice units.");

        /* Note that when we compile a new firewall we first flush out the access maps and the BPF programs themselves,
         * but we reuse the the accounting maps. That way the firewall in effect always maps to the actual
         * configuration, but we don't flush out the accounting unnecessarily */

        u->ip_bpf_ingress = FUNC6(u->ip_bpf_ingress);
        u->ip_bpf_egress = FUNC6(u->ip_bpf_egress);

        u->ipv4_allow_map_fd = FUNC9(u->ipv4_allow_map_fd);
        u->ipv4_deny_map_fd = FUNC9(u->ipv4_deny_map_fd);

        u->ipv6_allow_map_fd = FUNC9(u->ipv6_allow_map_fd);
        u->ipv6_deny_map_fd = FUNC9(u->ipv6_deny_map_fd);

        if (u->type != UNIT_SLICE) {
                /* In inner nodes we only do accounting, we do not actually bother with access control. However, leaf
                 * nodes will incorporate all IP access rules set on all their parent nodes. This has the benefit that
                 * they can optionally cancel out system-wide rules. Since inner nodes can't contain processes this
                 * means that all configure IP access rules *will* take effect on processes, even though we never
                 * compile them for inner nodes. */

                r = FUNC3(u, ACCESS_ALLOWED, &u->ipv4_allow_map_fd, &u->ipv6_allow_map_fd, &ip_allow_any);
                if (r < 0)
                        return FUNC8(u, r, "Preparation of eBPF allow maps failed: %m");

                r = FUNC3(u, ACCESS_DENIED, &u->ipv4_deny_map_fd, &u->ipv6_deny_map_fd, &ip_deny_any);
                if (r < 0)
                        return FUNC8(u, r, "Preparation of eBPF deny maps failed: %m");
        }

        r = FUNC4(u, cc->ip_accounting, &u->ip_accounting_ingress_map_fd, &u->ip_accounting_egress_map_fd);
        if (r < 0)
                return FUNC8(u, r, "Preparation of eBPF accounting maps failed: %m");

        r = FUNC2(u, true, &u->ip_bpf_ingress, ip_allow_any, ip_deny_any);
        if (r < 0)
                return FUNC8(u, r, "Compilation for ingress BPF program failed: %m");

        r = FUNC2(u, false, &u->ip_bpf_egress, ip_allow_any, ip_deny_any);
        if (r < 0)
                return FUNC8(u, r, "Compilation for egress BPF program failed: %m");

        return 0;
}