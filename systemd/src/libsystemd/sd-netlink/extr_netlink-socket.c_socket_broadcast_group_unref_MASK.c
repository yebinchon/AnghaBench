#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  sd_netlink ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *,unsigned int) ; 
 int FUNC2 (int /*<<< orphan*/ *,unsigned int) ; 
 int FUNC3 (int /*<<< orphan*/ *,unsigned int,unsigned int) ; 

int FUNC4(sd_netlink *nl, unsigned group) {
        unsigned n_ref;
        int r;

        FUNC0(*nl);

        n_ref = FUNC1(nl, group);

        FUNC0(n_ref > 0);

        n_ref--;

        r = FUNC3(nl, group, n_ref);
        if (r < 0)
                return r;

        if (n_ref > 0)
                /* still refs left */
                return 0;

        r = FUNC2(nl, group);
        if (r < 0)
                return r;

        return 0;
}