#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int family; int from_prefixlen; int to_prefixlen; int invert_rule; int tos; int fwmark; int fwmask; int priority; int table; int protocol; int /*<<< orphan*/  oif; int /*<<< orphan*/  iif; int /*<<< orphan*/  dport; int /*<<< orphan*/  sport; int /*<<< orphan*/  to; int /*<<< orphan*/  from; } ;
typedef  TYPE_1__ RoutingPolicyRule ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int FUNC0 (int,int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(const RoutingPolicyRule *a, const RoutingPolicyRule *b) {
        int r;

        r = FUNC0(a->family, b->family);
        if (r != 0)
                return r;

        switch (a->family) {
        case AF_INET:
        case AF_INET6:
                r = FUNC0(a->from_prefixlen, b->from_prefixlen);
                if (r != 0)
                        return r;

                r = FUNC2(&a->from, &b->from, FUNC1(a->family));
                if (r != 0)
                        return r;

                r = FUNC0(a->to_prefixlen, b->to_prefixlen);
                if (r != 0)
                        return r;

                r = FUNC2(&a->to, &b->to, FUNC1(a->family));
                if (r != 0)
                        return r;

                r = FUNC0(a->invert_rule, b->invert_rule);
                if (r != 0)
                        return r;

                r = FUNC0(a->tos, b->tos);
                if (r != 0)
                        return r;

                r = FUNC0(a->fwmark, b->fwmark);
                if (r != 0)
                        return r;

                r = FUNC0(a->fwmask, b->fwmask);
                if (r != 0)
                        return r;

                r = FUNC0(a->priority, b->priority);
                if (r != 0)
                        return r;

                r = FUNC0(a->table, b->table);
                if (r != 0)
                        return r;

                r = FUNC0(a->protocol, b->protocol);
                if (r != 0)
                        return r;

                r = FUNC2(&a->sport, &b->sport, sizeof(a->sport));
                if (r != 0)
                        return r;

                r = FUNC2(&a->dport, &b->dport, sizeof(a->dport));
                if (r != 0)
                        return r;

                r = FUNC3(a->iif, b->iif);
                if (r != 0)
                        return r;

                r = FUNC3(a->oif, b->oif);
                if (r != 0)
                        return r;

                return 0;
        default:
                /* treat any other address family as AF_UNSPEC */
                return 0;
        }
}