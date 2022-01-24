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
typedef  int /*<<< orphan*/  sd_netlink_message ;
struct TYPE_5__ {int /*<<< orphan*/  if_id; scalar_t__ independent; } ;
typedef  TYPE_1__ Xfrm ;
struct TYPE_6__ {int /*<<< orphan*/  ifindex; } ;
typedef  int /*<<< orphan*/  NetDev ;
typedef  TYPE_2__ Link ;

/* Variables and functions */
 int /*<<< orphan*/  IFLA_XFRM_IF_ID ; 
 int /*<<< orphan*/  IFLA_XFRM_LINK ; 
 int /*<<< orphan*/  LOOPBACK_IFINDEX ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(NetDev *netdev, Link *link, sd_netlink_message *message) {
        Xfrm *x;
        int r;

        FUNC1(*netdev);
        FUNC1(*message);

        x = FUNC0(netdev);

        FUNC1(link || x->independent);

        r = FUNC3(message, IFLA_XFRM_LINK, link ? link->ifindex : LOOPBACK_IFINDEX);
        if (r < 0)
                return FUNC2(netdev, r, "Could not append IFLA_XFRM_LINK: %m");

        r = FUNC3(message, IFLA_XFRM_IF_ID, x->if_id);
        if (r < 0)
                return FUNC2(netdev, r, "Could not append IFLA_XFRM_IF_ID: %m");

        return 0;
}