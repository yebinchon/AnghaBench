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
typedef  int /*<<< orphan*/  usec_t ;
struct TYPE_7__ {int /*<<< orphan*/  time_event_source; int /*<<< orphan*/  io_event_source; } ;
typedef  TYPE_1__ sd_netlink ;
typedef  TYPE_1__ sd_event_source ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(sd_event_source *s, void *userdata) {
        sd_netlink *rtnl = userdata;
        int r, e;
        usec_t until;

        FUNC0(s);
        FUNC0(rtnl);

        e = FUNC4(rtnl);
        if (e < 0)
                return e;

        r = FUNC2(rtnl->io_event_source, e);
        if (r < 0)
                return r;

        r = FUNC5(rtnl, &until);
        if (r < 0)
                return r;
        if (r > 0) {
                int j;

                j = FUNC3(rtnl->time_event_source, until);
                if (j < 0)
                        return j;
        }

        r = FUNC1(rtnl->time_event_source, r > 0);
        if (r < 0)
                return r;

        return 1;
}