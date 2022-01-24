#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  ifname; int /*<<< orphan*/  links_by_name; struct TYPE_10__* manager; int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ sd_netlink_message ;
typedef  TYPE_1__ Link ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  IFLA_IFNAME ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,char const**) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 char* FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char const*) ; 

int FUNC9(Link *l, sd_netlink_message *m) {
        const char *ifname;
        int r;

        FUNC0(l);
        FUNC0(l->manager);
        FUNC0(m);

        r = FUNC6(m, &l->flags);
        if (r < 0)
                return r;

        r = FUNC5(m, IFLA_IFNAME, &ifname);
        if (r < 0)
                return r;

        if (!FUNC8(l->ifname, ifname)) {
                char *new_ifname;

                new_ifname = FUNC7(ifname);
                if (!new_ifname)
                        return -ENOMEM;

                FUNC1(FUNC4(l->manager->links_by_name, l->ifname) == l);
                FUNC2(l->ifname, new_ifname);

                r = FUNC3(l->manager->links_by_name, l->ifname, l);
                if (r < 0)
                        return r;
        }

        return 0;
}