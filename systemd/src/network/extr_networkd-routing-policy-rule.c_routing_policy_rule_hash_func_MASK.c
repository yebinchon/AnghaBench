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
struct siphash {int dummy; } ;
struct TYPE_4__ {int family; int from; int from_prefixlen; int to; int to_prefixlen; int tos; int fwmark; int fwmask; int priority; int table; int protocol; int sport; int dport; int* iif; int* oif; int /*<<< orphan*/  invert_rule; } ;
typedef  TYPE_1__ RoutingPolicyRule ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int,struct siphash*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct siphash*) ; 
 int FUNC4 (int*) ; 

__attribute__((used)) static void FUNC5(const RoutingPolicyRule *rule, struct siphash *state) {
        FUNC1(rule);

        FUNC2(&rule->family, sizeof(rule->family), state);

        switch (rule->family) {
        case AF_INET:
        case AF_INET6:
                FUNC2(&rule->from, FUNC0(rule->family), state);
                FUNC2(&rule->from_prefixlen, sizeof(rule->from_prefixlen), state);

                FUNC2(&rule->to, FUNC0(rule->family), state);
                FUNC2(&rule->to_prefixlen, sizeof(rule->to_prefixlen), state);

                FUNC3(rule->invert_rule, state);

                FUNC2(&rule->tos, sizeof(rule->tos), state);
                FUNC2(&rule->fwmark, sizeof(rule->fwmark), state);
                FUNC2(&rule->fwmask, sizeof(rule->fwmask), state);
                FUNC2(&rule->priority, sizeof(rule->priority), state);
                FUNC2(&rule->table, sizeof(rule->table), state);

                FUNC2(&rule->protocol, sizeof(rule->protocol), state);
                FUNC2(&rule->sport, sizeof(rule->sport), state);
                FUNC2(&rule->dport, sizeof(rule->dport), state);

                if (rule->iif)
                        FUNC2(rule->iif, FUNC4(rule->iif), state);

                if (rule->oif)
                        FUNC2(rule->oif, FUNC4(rule->oif), state);

                break;
        default:
                /* treat any other address family as AF_UNSPEC */
                break;
        }
}