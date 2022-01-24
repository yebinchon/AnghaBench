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
typedef  scalar_t__ uint32_t ;
struct ifreq {void* ifr_data; int /*<<< orphan*/  ifr_name; } ;
struct ethtool_cmd {int autoneg; int /*<<< orphan*/  port; int /*<<< orphan*/  duplex; int /*<<< orphan*/  cmd; } ;
typedef  int /*<<< orphan*/  NetDevPort ;
typedef  int /*<<< orphan*/  Duplex ;

/* Variables and functions */
 int /*<<< orphan*/  ETHTOOL_GSET ; 
 int /*<<< orphan*/  IFNAMSIZ ; 
 int /*<<< orphan*/  SIOCETHTOOL ; 
 size_t SIZE_MAX ; 
 scalar_t__ SPEED_UNKNOWN ; 
 int errno ; 
 scalar_t__ FUNC0 (struct ethtool_cmd*) ; 
 int FUNC1 (int*,int) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,struct ifreq*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 

int FUNC4(int *fd, const char *ifname,
                          int *ret_autonegotiation, size_t *ret_speed,
                          Duplex *ret_duplex, NetDevPort *ret_port) {
        struct ethtool_cmd ecmd = {
                .cmd = ETHTOOL_GSET,
        };
        struct ifreq ifr = {
                .ifr_data = (void*) &ecmd,
        };
        int r;

        if (*fd < 0) {
                r = FUNC1(fd, false);
                if (r < 0)
                        return r;
        }

        FUNC3(ifr.ifr_name, IFNAMSIZ, ifname);

        r = FUNC2(*fd, SIOCETHTOOL, &ifr);
        if (r < 0)
                return -errno;

        if (ret_autonegotiation)
                *ret_autonegotiation = ecmd.autoneg;

        if (ret_speed) {
                uint32_t speed;

                speed = FUNC0(&ecmd);
                *ret_speed = speed == (uint32_t) SPEED_UNKNOWN ?
                        SIZE_MAX : (size_t) speed * 1000 * 1000;
        }

        if (ret_duplex)
                *ret_duplex = ecmd.duplex;

        if (ret_port)
                *ret_port = ecmd.port;

        return 0;
}