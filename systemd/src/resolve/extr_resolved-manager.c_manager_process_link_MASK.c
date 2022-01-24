#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct TYPE_18__ {int /*<<< orphan*/  links; } ;
typedef  TYPE_1__ sd_netlink_message ;
typedef  TYPE_1__ sd_netlink ;
struct TYPE_19__ {int ifindex; int /*<<< orphan*/  ifname; } ;
typedef  TYPE_1__ Manager ;
typedef  TYPE_4__ Link ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  RTM_DELLINK 129 
#define  RTM_NEWLINK 128 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int FUNC4 (TYPE_1__*,TYPE_4__**,int) ; 
 int FUNC5 (TYPE_4__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,char*) ; 
 int FUNC10 (TYPE_1__*,int*) ; 
 int FUNC11 (TYPE_1__*,int*) ; 

__attribute__((used)) static int FUNC12(sd_netlink *rtnl, sd_netlink_message *mm, void *userdata) {
        Manager *m = userdata;
        uint16_t type;
        Link *l;
        int ifindex, r;

        FUNC1(rtnl);
        FUNC1(m);
        FUNC1(mm);

        r = FUNC10(mm, &type);
        if (r < 0)
                goto fail;

        r = FUNC11(mm, &ifindex);
        if (r < 0)
                goto fail;

        l = FUNC2(m->links, FUNC0(ifindex));

        switch (type) {

        case RTM_NEWLINK:{
                bool is_new = !l;

                if (!l) {
                        r = FUNC4(m, &l, ifindex);
                        if (r < 0)
                                goto fail;
                }

                r = FUNC5(l, mm);
                if (r < 0)
                        goto fail;

                r = FUNC7(l);
                if (r < 0)
                        goto fail;

                if (is_new)
                        FUNC8("Found new link %i/%s", ifindex, l->ifname);

                break;
        }

        case RTM_DELLINK:
                if (l) {
                        FUNC8("Removing link %i/%s", l->ifindex, l->ifname);
                        FUNC6(l);
                        FUNC3(l);
                }

                break;
        }

        return 0;

fail:
        FUNC9(r, "Failed to process RTNL link message: %m");
        return 0;
}