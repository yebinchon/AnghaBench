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
struct TYPE_5__ {int /*<<< orphan*/  networks; int /*<<< orphan*/  network_dirs_ts_usec; } ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 int /*<<< orphan*/  NETWORK_DIRS ; 
 int FUNC0 (TYPE_1__*,int) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

int FUNC3(Manager *m) {
        int r;

        /* update timestamp */
        FUNC2(NETWORK_DIRS, &m->network_dirs_ts_usec, true);

        r = FUNC0(m, false);
        if (r < 0)
                return r;

        r = FUNC1(m, &m->networks);
        if (r < 0)
                return r;

        return 0;
}