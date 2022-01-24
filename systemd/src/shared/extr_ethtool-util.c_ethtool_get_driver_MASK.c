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
struct ifreq {void* ifr_data; int /*<<< orphan*/  ifr_name; } ;
struct ethtool_drvinfo {int /*<<< orphan*/  driver; int /*<<< orphan*/  cmd; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  ETHTOOL_GDRVINFO ; 
 int /*<<< orphan*/  IFNAMSIZ ; 
 int /*<<< orphan*/  SIOCETHTOOL ; 
 int errno ; 
 int FUNC0 (int*,int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,struct ifreq*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 

int FUNC4(int *fd, const char *ifname, char **ret) {
        struct ethtool_drvinfo ecmd = {
                .cmd = ETHTOOL_GDRVINFO
        };
        struct ifreq ifr = {
                .ifr_data = (void*) &ecmd
        };
        char *d;
        int r;

        if (*fd < 0) {
                r = FUNC0(fd, true);
                if (r < 0)
                        return r;
        }

        FUNC3(ifr.ifr_name, IFNAMSIZ, ifname);

        r = FUNC1(*fd, SIOCETHTOOL, &ifr);
        if (r < 0)
                return -errno;

        d = FUNC2(ecmd.driver);
        if (!d)
                return -ENOMEM;

        *ret = d;
        return 0;
}