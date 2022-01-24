#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  ip_bpf_custom_egress; int /*<<< orphan*/  ip_bpf_custom_ingress; } ;
typedef  TYPE_1__ Unit ;
struct TYPE_10__ {scalar_t__ ip_filters_egress; scalar_t__ ip_filters_ingress; } ;
typedef  TYPE_2__ CGroupContext ;

/* Variables and functions */
 int BPF_FIREWALL_SUPPORTED_WITH_MULTI ; 
 int /*<<< orphan*/  EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 () ; 
 int FUNC3 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 TYPE_2__* FUNC5 (TYPE_1__*) ; 

int FUNC6(Unit *u) {
        CGroupContext *cc;
        int r, supported;

        FUNC1(u);

        cc = FUNC5(u);
        if (!cc)
                return 0;

        if (!(cc->ip_filters_ingress || cc->ip_filters_egress))
                return 0;

        supported = FUNC2();
        if (supported < 0)
                return supported;

        if (supported != BPF_FIREWALL_SUPPORTED_WITH_MULTI)
                return FUNC4(u, FUNC0(EOPNOTSUPP), "BPF_F_ALLOW_MULTI not supported on this manager, cannot attach custom BPF programs.");

        r = FUNC3(u, cc->ip_filters_ingress, &u->ip_bpf_custom_ingress);
        if (r < 0)
                return r;
        r = FUNC3(u, cc->ip_filters_egress, &u->ip_bpf_custom_egress);
        if (r < 0)
                return r;

        return 0;
}