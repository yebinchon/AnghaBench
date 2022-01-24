#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  AF_LOCAL ; 
 int /*<<< orphan*/  AF_NETLINK ; 
 int EINVAL ; 
 int SD_LISTEN_FDS_START ; 
 int /*<<< orphan*/  SOCK_RAW ; 
 int /*<<< orphan*/  SOCK_SEQPACKET ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(int *ret_ctrl, int *ret_netlink) {
        int ctrl_fd = -1, netlink_fd = -1;
        int fd, n;

        FUNC0(ret_ctrl);
        FUNC0(ret_netlink);

        n = FUNC2(true);
        if (n < 0)
                return n;

        for (fd = SD_LISTEN_FDS_START; fd < n + SD_LISTEN_FDS_START; fd++) {
                if (FUNC1(fd, AF_LOCAL, SOCK_SEQPACKET, -1) > 0) {
                        if (ctrl_fd >= 0)
                                return -EINVAL;
                        ctrl_fd = fd;
                        continue;
                }

                if (FUNC1(fd, AF_NETLINK, SOCK_RAW, -1) > 0) {
                        if (netlink_fd >= 0)
                                return -EINVAL;
                        netlink_fd = fd;
                        continue;
                }

                return -EINVAL;
        }

        *ret_ctrl = ctrl_fd;
        *ret_netlink = netlink_fd;

        return 0;
}