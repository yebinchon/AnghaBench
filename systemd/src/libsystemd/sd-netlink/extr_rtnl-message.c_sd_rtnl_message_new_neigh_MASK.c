#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16_t ;
struct ndmsg {int ndm_family; int ndm_ifindex; } ;
struct TYPE_8__ {TYPE_6__* hdr; } ;
typedef  TYPE_1__ sd_netlink_message ;
typedef  int /*<<< orphan*/  sd_netlink ;
struct TYPE_9__ {int nlmsg_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  AF_UNSPEC ; 
 int /*<<< orphan*/  EINVAL ; 
 TYPE_1__** FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ndmsg* FUNC1 (TYPE_6__*) ; 
 int NLM_F_APPEND ; 
 int NLM_F_CREATE ; 
 int /*<<< orphan*/  PF_BRIDGE ; 
 scalar_t__ RTM_NEWNEIGH ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__**,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_1__**,scalar_t__) ; 
 TYPE_1__** FUNC4 (scalar_t__) ; 

int FUNC5(sd_netlink *rtnl, sd_netlink_message **ret, uint16_t nlmsg_type, int index, int ndm_family) {
        struct ndmsg *ndm;
        int r;

        FUNC2(FUNC4(nlmsg_type), -EINVAL);
        FUNC2(FUNC0(ndm_family, AF_UNSPEC, AF_INET, AF_INET6, PF_BRIDGE), -EINVAL);
        FUNC2(ret, -EINVAL);

        r = FUNC3(rtnl, ret, nlmsg_type);
        if (r < 0)
                return r;

        if (nlmsg_type == RTM_NEWNEIGH)
                (*ret)->hdr->nlmsg_flags |= NLM_F_CREATE | NLM_F_APPEND;

        ndm = FUNC1((*ret)->hdr);

        ndm->ndm_family = ndm_family;
        ndm->ndm_ifindex = index;

        return 0;
}