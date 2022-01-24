#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  sd_netlink_message ;
struct TYPE_6__ {int stats_updated; int /*<<< orphan*/  stats_new; int /*<<< orphan*/  stats_old; } ;
struct TYPE_5__ {int /*<<< orphan*/  links; } ;
typedef  TYPE_1__ Manager ;
typedef  TYPE_2__ Link ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  IFLA_STATS64 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ RTM_NEWLINK ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static int FUNC5(Manager *manager, sd_netlink_message *message) {
        uint16_t type;
        int ifindex, r;
        Link *link;

        r = FUNC2(message, &type);
        if (r < 0)
                return r;

        if (type != RTM_NEWLINK)
                return 0;

        r = FUNC4(message, &ifindex);
        if (r < 0)
                return r;

        link = FUNC1(manager->links, FUNC0(ifindex));
        if (!link)
                return -ENODEV;

        link->stats_old = link->stats_new;

        r = FUNC3(message, IFLA_STATS64, sizeof link->stats_new, &link->stats_new);
        if (r < 0)
                return r;

        link->stats_updated = true;

        return 0;
}