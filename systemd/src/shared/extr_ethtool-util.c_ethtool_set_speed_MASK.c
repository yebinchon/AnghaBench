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
struct ethtool_cmd {int /*<<< orphan*/  cmd; int /*<<< orphan*/  duplex; } ;
typedef  int Duplex ;

/* Variables and functions */
 int /*<<< orphan*/  DUPLEX_FULL ; 
 int /*<<< orphan*/  DUPLEX_HALF ; 
#define  DUP_FULL 129 
#define  DUP_HALF 128 
 int /*<<< orphan*/  ETHTOOL_GSET ; 
 int /*<<< orphan*/  ETHTOOL_SSET ; 
 int /*<<< orphan*/  IFNAMSIZ ; 
 int /*<<< orphan*/  SIOCETHTOOL ; 
 int _DUP_INVALID ; 
 int errno ; 
 unsigned int FUNC0 (struct ethtool_cmd*) ; 
 int /*<<< orphan*/  FUNC1 (struct ethtool_cmd*,unsigned int) ; 
 int FUNC2 (int*,int) ; 
 int FUNC3 (int,int /*<<< orphan*/ ,struct ifreq*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 

int FUNC5(int *fd, const char *ifname, unsigned speed, Duplex duplex) {
        struct ethtool_cmd ecmd = {
                .cmd = ETHTOOL_GSET
        };
        struct ifreq ifr = {
                .ifr_data = (void*) &ecmd
        };
        bool need_update = false;
        int r;

        if (speed == 0 && duplex == _DUP_INVALID)
                return 0;

        if (*fd < 0) {
                r = FUNC2(fd, true);
                if (r < 0)
                        return r;
        }

        FUNC4(ifr.ifr_name, IFNAMSIZ, ifname);

        r = FUNC3(*fd, SIOCETHTOOL, &ifr);
        if (r < 0)
                return -errno;

        if (FUNC0(&ecmd) != speed) {
                FUNC1(&ecmd, speed);
                need_update = true;
        }

        switch (duplex) {
                case DUP_HALF:
                        if (ecmd.duplex != DUPLEX_HALF) {
                                ecmd.duplex = DUPLEX_HALF;
                                need_update = true;
                        }
                        break;
                case DUP_FULL:
                        if (ecmd.duplex != DUPLEX_FULL) {
                                ecmd.duplex = DUPLEX_FULL;
                                need_update = true;
                        }
                        break;
                default:
                        break;
        }

        if (need_update) {
                ecmd.cmd = ETHTOOL_SSET;

                r = FUNC3(*fd, SIOCETHTOOL, &ifr);
                if (r < 0)
                        return -errno;
        }

        return 0;
}