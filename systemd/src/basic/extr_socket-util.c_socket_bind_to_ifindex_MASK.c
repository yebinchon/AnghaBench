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
typedef  int /*<<< orphan*/  ifindex ;

/* Variables and functions */
 int ENOPROTOOPT ; 
 int /*<<< orphan*/  IF_NAMESIZE ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_BINDTODEVICE ; 
 int /*<<< orphan*/  SO_BINDTOIFINDEX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC3 (int,char*) ; 

int FUNC4(int fd, int ifindex) {
        char ifname[IF_NAMESIZE + 1];

        FUNC0(fd >= 0);

        if (ifindex <= 0) {
                /* Drop binding */
                if (FUNC2(fd, SOL_SOCKET, SO_BINDTODEVICE, NULL, 0) < 0)
                        return -errno;

                return 0;
        }

        if (FUNC2(fd, SOL_SOCKET, SO_BINDTOIFINDEX, &ifindex, sizeof(ifindex)) >= 0)
                return 0;
        if (errno != ENOPROTOOPT)
                return -errno;

        /* Fall back to SO_BINDTODEVICE on kernels < 5.0 which didn't have SO_BINDTOIFINDEX */
        if (!FUNC1(ifindex, ifname))
                return -errno;

        return FUNC3(fd, ifname);
}