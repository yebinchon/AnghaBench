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
struct TYPE_5__ {int /*<<< orphan*/  rtnl; int /*<<< orphan*/  event; } ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 int /*<<< orphan*/  RCVBUF_SIZE ; 
 int /*<<< orphan*/  RTM_DELADDR ; 
 int /*<<< orphan*/  RTM_DELLINK ; 
 int /*<<< orphan*/  RTM_DELNEIGH ; 
 int /*<<< orphan*/  RTM_DELNEXTHOP ; 
 int /*<<< orphan*/  RTM_DELROUTE ; 
 int /*<<< orphan*/  RTM_DELRULE ; 
 int /*<<< orphan*/  RTM_NEWADDR ; 
 int /*<<< orphan*/  RTM_NEWLINK ; 
 int /*<<< orphan*/  RTM_NEWNEIGH ; 
 int /*<<< orphan*/  RTM_NEWNEXTHOP ; 
 int /*<<< orphan*/  RTM_NEWROUTE ; 
 int /*<<< orphan*/  RTM_NEWRULE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  manager_rtnl_process_address ; 
 int /*<<< orphan*/  manager_rtnl_process_link ; 
 int /*<<< orphan*/  manager_rtnl_process_neighbor ; 
 int /*<<< orphan*/  manager_rtnl_process_nexthop ; 
 int /*<<< orphan*/  manager_rtnl_process_route ; 
 int /*<<< orphan*/  manager_rtnl_process_rule ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 () ; 

__attribute__((used)) static int FUNC7(Manager *m) {
        int fd, r;

        FUNC0(m);

        fd = FUNC6();
        if (fd < 0)
                r = FUNC4(&m->rtnl);
        else
                r = FUNC5(&m->rtnl, fd);
        if (r < 0)
                return r;

        r = FUNC3(m->rtnl, RCVBUF_SIZE);
        if (r < 0)
                return r;

        r = FUNC2(m->rtnl, m->event, 0);
        if (r < 0)
                return r;

        r = FUNC1(m->rtnl, NULL, RTM_NEWLINK, &manager_rtnl_process_link, NULL, m, "network-rtnl_process_link");
        if (r < 0)
                return r;

        r = FUNC1(m->rtnl, NULL, RTM_DELLINK, &manager_rtnl_process_link, NULL, m, "network-rtnl_process_link");
        if (r < 0)
                return r;

        r = FUNC1(m->rtnl, NULL, RTM_NEWADDR, &manager_rtnl_process_address, NULL, m, "network-rtnl_process_address");
        if (r < 0)
                return r;

        r = FUNC1(m->rtnl, NULL, RTM_DELADDR, &manager_rtnl_process_address, NULL, m, "network-rtnl_process_address");
        if (r < 0)
                return r;

        r = FUNC1(m->rtnl, NULL, RTM_NEWNEIGH, &manager_rtnl_process_neighbor, NULL, m, "network-rtnl_process_neighbor");
        if (r < 0)
                return r;

        r = FUNC1(m->rtnl, NULL, RTM_DELNEIGH, &manager_rtnl_process_neighbor, NULL, m, "network-rtnl_process_neighbor");
        if (r < 0)
                return r;

        r = FUNC1(m->rtnl, NULL, RTM_NEWROUTE, &manager_rtnl_process_route, NULL, m, "network-rtnl_process_route");
        if (r < 0)
                return r;

        r = FUNC1(m->rtnl, NULL, RTM_DELROUTE, &manager_rtnl_process_route, NULL, m, "network-rtnl_process_route");
        if (r < 0)
                return r;

        r = FUNC1(m->rtnl, NULL, RTM_NEWRULE, &manager_rtnl_process_rule, NULL, m, "network-rtnl_process_rule");
        if (r < 0)
                return r;

        r = FUNC1(m->rtnl, NULL, RTM_DELRULE, &manager_rtnl_process_rule, NULL, m, "network-rtnl_process_rule");
        if (r < 0)
                return r;

        r = FUNC1(m->rtnl, NULL, RTM_NEWNEXTHOP, &manager_rtnl_process_nexthop, NULL, m, "network-rtnl_process_nexthop");
        if (r < 0)
                return r;

        r = FUNC1(m->rtnl, NULL, RTM_DELNEXTHOP, &manager_rtnl_process_nexthop, NULL, m, "network-rtnl_process_nexthop");
        if (r < 0)
                return r;

        return 0;
}