
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ifreq {void* ifr_data; int ifr_name; } ;
struct ethtool_ringparam {scalar_t__ rx_pending; scalar_t__ tx_pending; int cmd; } ;
struct TYPE_3__ {scalar_t__ rx_pending; scalar_t__ tx_pending; scalar_t__ tx_pending_set; scalar_t__ rx_pending_set; } ;
typedef TYPE_1__ netdev_ring_param ;


 int ETHTOOL_GRINGPARAM ;
 int ETHTOOL_SRINGPARAM ;
 int IFNAMSIZ ;
 int SIOCETHTOOL ;
 int errno ;
 int ethtool_connect_or_warn (int*,int) ;
 int ioctl (int,int ,struct ifreq*) ;
 int strscpy (int ,int ,char const*) ;

int ethtool_set_nic_buffer_size(int *fd, const char *ifname, netdev_ring_param *ring) {
        struct ethtool_ringparam ecmd = {
                .cmd = ETHTOOL_GRINGPARAM
        };
        struct ifreq ifr = {
                .ifr_data = (void*) &ecmd
        };
        bool need_update = 0;
        int r;

        if (*fd < 0) {
                r = ethtool_connect_or_warn(fd, 1);
                if (r < 0)
                        return r;
        }

        strscpy(ifr.ifr_name, IFNAMSIZ, ifname);

        r = ioctl(*fd, SIOCETHTOOL, &ifr);
        if (r < 0)
                return -errno;

        if (ring->rx_pending_set) {
                if (ecmd.rx_pending != ring->rx_pending) {
                        ecmd.rx_pending = ring->rx_pending;
                        need_update = 1;
                }
        }

        if (ring->tx_pending_set) {
                   if (ecmd.tx_pending != ring->tx_pending) {
                           ecmd.tx_pending = ring->tx_pending;
                           need_update = 1;
                }
        }

        if (need_update) {
                ecmd.cmd = ETHTOOL_SRINGPARAM;

                r = ioctl(*fd, SIOCETHTOOL, &ifr);
                if (r < 0)
                        return -errno;
        }

        return 0;
}
