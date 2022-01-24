#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ifreq {void* ifr_data; int /*<<< orphan*/  ifr_name; } ;
struct ethtool_ringparam {scalar_t__ rx_pending; scalar_t__ tx_pending; int /*<<< orphan*/  cmd; } ;
struct TYPE_3__ {scalar_t__ rx_pending; scalar_t__ tx_pending; scalar_t__ tx_pending_set; scalar_t__ rx_pending_set; } ;
typedef  TYPE_1__ netdev_ring_param ;

/* Variables and functions */
 int /*<<< orphan*/  ETHTOOL_GRINGPARAM ; 
 int /*<<< orphan*/  ETHTOOL_SRINGPARAM ; 
 int /*<<< orphan*/  IFNAMSIZ ; 
 int /*<<< orphan*/  SIOCETHTOOL ; 
 int errno ; 
 int FUNC0 (int*,int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,struct ifreq*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 

int FUNC3(int *fd, const char *ifname, netdev_ring_param *ring) {
        struct ethtool_ringparam ecmd = {
                .cmd = ETHTOOL_GRINGPARAM
        };
        struct ifreq ifr = {
                .ifr_data = (void*) &ecmd
        };
        bool need_update = false;
        int r;

        if (*fd < 0) {
                r = FUNC0(fd, true);
                if (r < 0)
                        return r;
        }

        FUNC2(ifr.ifr_name, IFNAMSIZ, ifname);

        r = FUNC1(*fd, SIOCETHTOOL, &ifr);
        if (r < 0)
                return -errno;

        if (ring->rx_pending_set) {
                if (ecmd.rx_pending != ring->rx_pending) {
                        ecmd.rx_pending = ring->rx_pending;
                        need_update = true;
                }
        }

        if (ring->tx_pending_set) {
                   if (ecmd.tx_pending != ring->tx_pending) {
                           ecmd.tx_pending = ring->tx_pending;
                           need_update = true;
                }
        }

        if (need_update) {
                ecmd.cmd = ETHTOOL_SRINGPARAM;

                r = FUNC1(*fd, SIOCETHTOOL, &ifr);
                if (r < 0)
                        return -errno;
        }

        return 0;
}