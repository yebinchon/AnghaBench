#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
union in_addr_union {int /*<<< orphan*/  in6; int /*<<< orphan*/  in; } ;
typedef  int uint16_t ;
struct TYPE_13__ {int /*<<< orphan*/  links; } ;
typedef  TYPE_1__ sd_netlink_message ;
typedef  TYPE_1__ sd_netlink ;
typedef  TYPE_1__ Manager ;
typedef  int /*<<< orphan*/  LinkAddress ;
typedef  int /*<<< orphan*/  Link ;

/* Variables and functions */
#define  AF_INET 131 
#define  AF_INET6 130 
 int /*<<< orphan*/  IFA_ADDRESS ; 
 int /*<<< orphan*/  IFA_LOCAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  RTM_DELADDR 129 
#define  RTM_NEWADDR 128 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int,union in_addr_union*) ; 
 int FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int,union in_addr_union*) ; 
 int /*<<< orphan*/  FUNC7 (int,char*) ; 
 int FUNC8 (TYPE_1__*,int*) ; 
 int FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC11 (TYPE_1__*,int*) ; 
 int FUNC12 (TYPE_1__*,int*) ; 

__attribute__((used)) static int FUNC13(sd_netlink *rtnl, sd_netlink_message *mm, void *userdata) {
        Manager *m = userdata;
        union in_addr_union address;
        uint16_t type;
        int r, ifindex, family;
        LinkAddress *a;
        Link *l;

        FUNC1(rtnl);
        FUNC1(mm);
        FUNC1(m);

        r = FUNC8(mm, &type);
        if (r < 0)
                goto fail;

        r = FUNC12(mm, &ifindex);
        if (r < 0)
                goto fail;

        l = FUNC2(m->links, FUNC0(ifindex));
        if (!l)
                return 0;

        r = FUNC11(mm, &family);
        if (r < 0)
                goto fail;

        switch (family) {

        case AF_INET:
                r = FUNC10(mm, IFA_LOCAL, &address.in);
                if (r < 0) {
                        r = FUNC10(mm, IFA_ADDRESS, &address.in);
                        if (r < 0)
                                goto fail;
                }

                break;

        case AF_INET6:
                r = FUNC9(mm, IFA_LOCAL, &address.in6);
                if (r < 0) {
                        r = FUNC9(mm, IFA_ADDRESS, &address.in6);
                        if (r < 0)
                                goto fail;
                }

                break;

        default:
                return 0;
        }

        a = FUNC6(l, family, &address);

        switch (type) {

        case RTM_NEWADDR:

                if (!a) {
                        r = FUNC4(l, &a, family, &address);
                        if (r < 0)
                                return r;
                }

                r = FUNC5(a, mm);
                if (r < 0)
                        return r;

                break;

        case RTM_DELADDR:
                FUNC3(a);
                break;
        }

        return 0;

fail:
        FUNC7(r, "Failed to process RTNL address message: %m");
        return 0;
}