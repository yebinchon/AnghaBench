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
struct TYPE_4__ {int id; int oif; int family; int gw; } ;
typedef  TYPE_1__ NextHop ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int,struct siphash*) ; 

__attribute__((used)) static void FUNC3(const NextHop *nexthop, struct siphash *state) {
        FUNC1(nexthop);

        FUNC2(&nexthop->id, sizeof(nexthop->id), state);
        FUNC2(&nexthop->oif, sizeof(nexthop->oif), state);
        FUNC2(&nexthop->family, sizeof(nexthop->family), state);

        switch (nexthop->family) {
        case AF_INET:
        case AF_INET6:
                FUNC2(&nexthop->gw, FUNC0(nexthop->family), state);

                break;
        default:
                /* treat any other address family as AF_UNSPEC */
                break;
        }
}