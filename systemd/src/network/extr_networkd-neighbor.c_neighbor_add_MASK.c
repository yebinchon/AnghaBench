#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  union lladdr_union {int dummy; } lladdr_union ;
typedef  union in_addr_union {int dummy; } in_addr_union ;
struct TYPE_5__ {int /*<<< orphan*/  neighbors_foreign; int /*<<< orphan*/  neighbors; } ;
typedef  int /*<<< orphan*/  Neighbor ;
typedef  TYPE_1__ Link ;

/* Variables and functions */
 int ENOENT ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int,union in_addr_union const*,union lladdr_union const*,size_t,int /*<<< orphan*/ **) ; 
 int FUNC1 (TYPE_1__*,int,union in_addr_union const*,union lladdr_union const*,size_t,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  neighbor_hash_ops ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC5(Link *link, int family, const union in_addr_union *addr, const union lladdr_union *lladdr, size_t lladdr_size, Neighbor **ret) {
        Neighbor *neighbor;
        int r;

        r = FUNC1(link, family, addr, lladdr, lladdr_size, &neighbor);
        if (r == -ENOENT) {
                /* Neighbor doesn't exist, make a new one */
                r = FUNC0(link, &link->neighbors, family, addr, lladdr, lladdr_size, &neighbor);
                if (r < 0)
                        return r;
        } else if (r == 0) {
                /* Neighbor is foreign, claim it as recognized */
                r = FUNC2(&link->neighbors, &neighbor_hash_ops);
                if (r < 0)
                        return r;

                r = FUNC3(link->neighbors, neighbor);
                if (r < 0)
                        return r;

                FUNC4(link->neighbors_foreign, neighbor);
        } else if (r == 1) {
                /* Neighbor already exists */
        } else
                return r;

        if (ret)
                *ret = neighbor;
        return 0;
}