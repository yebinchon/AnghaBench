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
typedef  int socklen_t ;
struct TYPE_5__ {int /*<<< orphan*/  sa; } ;
struct TYPE_6__ {TYPE_1__ sockaddr; int /*<<< orphan*/  fd; } ;
typedef  TYPE_2__ sd_netlink ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  NETLINK_PKTINFO ; 
 int /*<<< orphan*/  SOL_NETLINK ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (TYPE_2__*) ; 
 int errno ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC4(sd_netlink *nl) {
        socklen_t addrlen;
        int r;

        r = FUNC3(nl->fd, SOL_NETLINK, NETLINK_PKTINFO, true);
        if (r < 0)
                return r;

        addrlen = sizeof(nl->sockaddr);

        r = FUNC0(nl->fd, &nl->sockaddr.sa, addrlen);
        /* ignore EINVAL to allow opening an already bound socket */
        if (r < 0 && errno != EINVAL)
                return -errno;

        r = FUNC2(nl->fd, &nl->sockaddr.sa, &addrlen);
        if (r < 0)
                return -errno;

        r = FUNC1(nl);
        if (r < 0)
                return r;

        return 0;
}