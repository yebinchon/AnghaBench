
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifreq {void* ifr_data; int ifr_name; } ;
struct ethtool_wolinfo {int cmd; int wolopts; } ;
typedef int WakeOnLan ;


 int ETHTOOL_GWOL ;
 int ETHTOOL_SWOL ;
 int IFNAMSIZ ;
 int SIOCETHTOOL ;
 int WAKE_ARP ;
 int WAKE_BCAST ;
 int WAKE_MAGIC ;
 int WAKE_MAGICSECURE ;
 int WAKE_MCAST ;
 int WAKE_PHY ;
 int WAKE_UCAST ;
 int _WOL_INVALID ;
 int errno ;
 int ethtool_connect_or_warn (int*,int) ;
 int ioctl (int,int ,struct ifreq*) ;
 int strscpy (int ,int ,char const*) ;

int ethtool_set_wol(int *fd, const char *ifname, WakeOnLan wol) {
        struct ethtool_wolinfo ecmd = {
                .cmd = ETHTOOL_GWOL
        };
        struct ifreq ifr = {
                .ifr_data = (void*) &ecmd
        };
        bool need_update = 0;
        int r;

        if (wol == _WOL_INVALID)
                return 0;

        if (*fd < 0) {
                r = ethtool_connect_or_warn(fd, 1);
                if (r < 0)
                        return r;
        }

        strscpy(ifr.ifr_name, IFNAMSIZ, ifname);

        r = ioctl(*fd, SIOCETHTOOL, &ifr);
        if (r < 0)
                return -errno;

        switch (wol) {
        case 129:
                if (ecmd.wolopts != WAKE_PHY) {
                        ecmd.wolopts = WAKE_PHY;
                        need_update = 1;
                }
                break;
        case 128:
                if (ecmd.wolopts != WAKE_UCAST) {
                        ecmd.wolopts = WAKE_UCAST;
                        need_update = 1;
                }
                break;
        case 131:
                if (ecmd.wolopts != WAKE_MCAST) {
                        ecmd.wolopts = WAKE_MCAST;
                        need_update = 1;
                }
                break;
        case 134:
                if (ecmd.wolopts != WAKE_BCAST) {
                        ecmd.wolopts = WAKE_BCAST;
                        need_update = 1;
                }
                break;
        case 135:
                if (ecmd.wolopts != WAKE_ARP) {
                        ecmd.wolopts = WAKE_ARP;
                        need_update = 1;
                }
                break;
        case 133:
                if (ecmd.wolopts != WAKE_MAGIC) {
                        ecmd.wolopts = WAKE_MAGIC;
                        need_update = 1;
                }
                break;
        case 132:
                if (ecmd.wolopts != WAKE_MAGICSECURE) {
                        ecmd.wolopts = WAKE_MAGICSECURE;
                        need_update = 1;
                }
                break;
        case 130:
                if (ecmd.wolopts != 0) {
                        ecmd.wolopts = 0;
                        need_update = 1;
                }
                break;
        default:
                break;
        }

        if (need_update) {
                ecmd.cmd = ETHTOOL_SWOL;

                r = ioctl(*fd, SIOCETHTOOL, &ifr);
                if (r < 0)
                        return -errno;
        }

        return 0;
}
