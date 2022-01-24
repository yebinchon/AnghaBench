#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  broadcast_group_refs; } ;
typedef  TYPE_1__ sd_netlink ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 unsigned int FUNC1 (TYPE_1__*,unsigned int) ; 
 int FUNC2 (TYPE_1__*,unsigned int) ; 
 int FUNC3 (TYPE_1__*,unsigned int,unsigned int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC5(sd_netlink *nl, unsigned group) {
        unsigned n_ref;
        int r;

        FUNC0(nl);

        n_ref = FUNC1(nl, group);

        n_ref++;

        r = FUNC4(&nl->broadcast_group_refs, NULL);
        if (r < 0)
                return r;

        r = FUNC3(nl, group, n_ref);
        if (r < 0)
                return r;

        if (n_ref > 1)
                /* not yet in the group */
                return 0;

        r = FUNC2(nl, group);
        if (r < 0)
                return r;

        return 0;
}