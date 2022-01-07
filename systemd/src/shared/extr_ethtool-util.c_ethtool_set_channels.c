
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ifreq {void* ifr_data; int ifr_name; } ;
struct ethtool_channels {scalar_t__ rx_count; scalar_t__ tx_count; scalar_t__ other_count; scalar_t__ combined_count; int cmd; } ;
struct TYPE_3__ {scalar_t__ rx_count; scalar_t__ tx_count; scalar_t__ other_count; scalar_t__ combined_count; scalar_t__ combined_count_set; scalar_t__ other_count_set; scalar_t__ tx_count_set; scalar_t__ rx_count_set; } ;
typedef TYPE_1__ netdev_channels ;


 int ETHTOOL_GCHANNELS ;
 int ETHTOOL_SCHANNELS ;
 int IFNAMSIZ ;
 int SIOCETHTOOL ;
 int errno ;
 int ethtool_connect_or_warn (int*,int) ;
 int ioctl (int,int ,struct ifreq*) ;
 int strscpy (int ,int ,char const*) ;

int ethtool_set_channels(int *fd, const char *ifname, netdev_channels *channels) {
        struct ethtool_channels ecmd = {
                .cmd = ETHTOOL_GCHANNELS
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

        if (channels->rx_count_set && ecmd.rx_count != channels->rx_count) {
                ecmd.rx_count = channels->rx_count;
                need_update = 1;
        }

        if (channels->tx_count_set && ecmd.tx_count != channels->tx_count) {
                ecmd.tx_count = channels->tx_count;
                need_update = 1;
        }

        if (channels->other_count_set && ecmd.other_count != channels->other_count) {
                ecmd.other_count = channels->other_count;
                need_update = 1;
        }

        if (channels->combined_count_set && ecmd.combined_count != channels->combined_count) {
                ecmd.combined_count = channels->combined_count;
                need_update = 1;
        }

        if (need_update) {
                ecmd.cmd = ETHTOOL_SCHANNELS;

                r = ioctl(*fd, SIOCETHTOOL, &ifr);
                if (r < 0)
                        return -errno;
        }

        return 0;
}
