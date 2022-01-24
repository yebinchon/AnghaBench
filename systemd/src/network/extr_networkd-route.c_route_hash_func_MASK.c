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
struct TYPE_4__ {int family; int dst_prefixlen; int dst; int src_prefixlen; int src; int gw; int prefsrc; int tos; int priority; int table; int protocol; int scope; int type; int initcwnd; int initrwnd; } ;
typedef  TYPE_1__ Route ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int,struct siphash*) ; 

__attribute__((used)) static void FUNC3(const Route *route, struct siphash *state) {
        FUNC1(route);

        FUNC2(&route->family, sizeof(route->family), state);

        switch (route->family) {
        case AF_INET:
        case AF_INET6:
                FUNC2(&route->dst_prefixlen, sizeof(route->dst_prefixlen), state);
                FUNC2(&route->dst, FUNC0(route->family), state);

                FUNC2(&route->src_prefixlen, sizeof(route->src_prefixlen), state);
                FUNC2(&route->src, FUNC0(route->family), state);

                FUNC2(&route->gw, FUNC0(route->family), state);

                FUNC2(&route->prefsrc, FUNC0(route->family), state);

                FUNC2(&route->tos, sizeof(route->tos), state);
                FUNC2(&route->priority, sizeof(route->priority), state);
                FUNC2(&route->table, sizeof(route->table), state);
                FUNC2(&route->protocol, sizeof(route->protocol), state);
                FUNC2(&route->scope, sizeof(route->scope), state);
                FUNC2(&route->type, sizeof(route->type), state);

                FUNC2(&route->initcwnd, sizeof(route->initcwnd), state);
                FUNC2(&route->initrwnd, sizeof(route->initrwnd), state);

                break;
        default:
                /* treat any other address family as AF_UNSPEC */
                break;
        }
}