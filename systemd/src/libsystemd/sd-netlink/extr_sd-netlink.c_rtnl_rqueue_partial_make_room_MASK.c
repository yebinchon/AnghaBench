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
struct TYPE_4__ {scalar_t__ rqueue_partial_size; int /*<<< orphan*/  rqueue_partial_allocated; int /*<<< orphan*/  rqueue_partial; } ;
typedef  TYPE_1__ sd_netlink ;

/* Variables and functions */
 int /*<<< orphan*/  ENOBUFS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ RTNL_RQUEUE_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__) ; 

int FUNC4(sd_netlink *rtnl) {
        FUNC2(rtnl);

        if (rtnl->rqueue_partial_size >= RTNL_RQUEUE_MAX)
                return FUNC3(FUNC1(ENOBUFS),
                                       "rtnl: exhausted the partial read queue size (%d)",
                                       RTNL_RQUEUE_MAX);

        if (!FUNC0(rtnl->rqueue_partial, rtnl->rqueue_partial_allocated,
                            rtnl->rqueue_partial_size + 1))
                return -ENOMEM;

        return 0;
}