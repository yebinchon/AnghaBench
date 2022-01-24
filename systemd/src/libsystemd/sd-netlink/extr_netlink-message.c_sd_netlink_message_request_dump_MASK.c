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
struct TYPE_5__ {int /*<<< orphan*/  nlmsg_flags; struct TYPE_5__* hdr; int /*<<< orphan*/  nlmsg_type; } ;
typedef  TYPE_1__ sd_netlink_message ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NLM_F_DUMP ; 
 int /*<<< orphan*/  RTM_GETADDR ; 
 int /*<<< orphan*/  RTM_GETADDRLABEL ; 
 int /*<<< orphan*/  RTM_GETLINK ; 
 int /*<<< orphan*/  RTM_GETNEIGH ; 
 int /*<<< orphan*/  RTM_GETNEXTHOP ; 
 int /*<<< orphan*/  RTM_GETROUTE ; 
 int /*<<< orphan*/  RTM_GETRULE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 

int FUNC3(sd_netlink_message *m, int dump) {
        FUNC2(m, -EINVAL);
        FUNC2(m->hdr, -EINVAL);

        FUNC2(FUNC0(m->hdr->nlmsg_type, RTM_GETLINK, RTM_GETADDR, RTM_GETROUTE, RTM_GETNEIGH,
                             RTM_GETRULE, RTM_GETADDRLABEL, RTM_GETNEXTHOP), -EINVAL);

        FUNC1(m->hdr->nlmsg_flags, NLM_F_DUMP, dump);

        return 0;
}