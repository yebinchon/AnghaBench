#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_6__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16_t ;
struct ifaddrlblmsg {int ifal_family; int ifal_index; } ;
struct TYPE_7__ {TYPE_6__* hdr; } ;
typedef  TYPE_1__ sd_netlink_message ;
typedef  int /*<<< orphan*/  sd_netlink ;
struct TYPE_8__ {int nlmsg_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct ifaddrlblmsg* FUNC0 (TYPE_6__*) ; 
 int NLM_F_CREATE ; 
 int NLM_F_EXCL ; 
 scalar_t__ RTM_NEWADDRLABEL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__**,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_1__**,scalar_t__) ; 
 TYPE_1__** FUNC3 (scalar_t__) ; 

int FUNC4(sd_netlink *rtnl, sd_netlink_message **ret, uint16_t nlmsg_type, int ifindex, int ifal_family) {
        struct ifaddrlblmsg *addrlabel;
        int r;

        FUNC1(FUNC3(nlmsg_type), -EINVAL);
        FUNC1(ret, -EINVAL);

        r = FUNC2(rtnl, ret, nlmsg_type);
        if (r < 0)
                return r;

        if (nlmsg_type == RTM_NEWADDRLABEL)
                (*ret)->hdr->nlmsg_flags |= NLM_F_CREATE | NLM_F_EXCL;

        addrlabel = FUNC0((*ret)->hdr);

        addrlabel->ifal_family = ifal_family;
        addrlabel->ifal_index = ifindex;

        return 0;
}