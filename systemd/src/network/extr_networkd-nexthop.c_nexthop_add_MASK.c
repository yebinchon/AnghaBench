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
struct TYPE_5__ {int /*<<< orphan*/  nexthops_foreign; int /*<<< orphan*/  nexthops; } ;
typedef  int /*<<< orphan*/  NextHop ;
typedef  TYPE_1__ Link ;

/* Variables and functions */
 int ENOENT ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  nexthop_hash_ops ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC5(Link *link, NextHop *in, NextHop **ret) {
        NextHop *nexthop;
        int r;

        r = FUNC1(link, in, &nexthop);
        if (r == -ENOENT) {
                /* NextHop does not exist, create a new one */
                r = FUNC0(link, &link->nexthops, in, &nexthop);
                if (r < 0)
                        return r;
        } else if (r == 0) {
                /* Take over a foreign nexthop */
                r = FUNC2(&link->nexthops, &nexthop_hash_ops);
                if (r < 0)
                        return r;

                r = FUNC3(link->nexthops, nexthop);
                if (r < 0)
                        return r;

                FUNC4(link->nexthops_foreign, nexthop);
        } else if (r == 1) {
                /* NextHop exists, do nothing */
                ;
        } else
                return r;

        if (ret)
                *ret = nexthop;

        return 0;
}