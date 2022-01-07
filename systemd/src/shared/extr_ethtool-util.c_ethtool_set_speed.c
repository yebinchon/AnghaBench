
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifreq {void* ifr_data; int ifr_name; } ;
struct ethtool_cmd {int cmd; int duplex; } ;
typedef int Duplex ;


 int DUPLEX_FULL ;
 int DUPLEX_HALF ;


 int ETHTOOL_GSET ;
 int ETHTOOL_SSET ;
 int IFNAMSIZ ;
 int SIOCETHTOOL ;
 int _DUP_INVALID ;
 int errno ;
 unsigned int ethtool_cmd_speed (struct ethtool_cmd*) ;
 int ethtool_cmd_speed_set (struct ethtool_cmd*,unsigned int) ;
 int ethtool_connect_or_warn (int*,int) ;
 int ioctl (int,int ,struct ifreq*) ;
 int strscpy (int ,int ,char const*) ;

int ethtool_set_speed(int *fd, const char *ifname, unsigned speed, Duplex duplex) {
        struct ethtool_cmd ecmd = {
                .cmd = ETHTOOL_GSET
        };
        struct ifreq ifr = {
                .ifr_data = (void*) &ecmd
        };
        bool need_update = 0;
        int r;

        if (speed == 0 && duplex == _DUP_INVALID)
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

        if (ethtool_cmd_speed(&ecmd) != speed) {
                ethtool_cmd_speed_set(&ecmd, speed);
                need_update = 1;
        }

        switch (duplex) {
                case 128:
                        if (ecmd.duplex != DUPLEX_HALF) {
                                ecmd.duplex = DUPLEX_HALF;
                                need_update = 1;
                        }
                        break;
                case 129:
                        if (ecmd.duplex != DUPLEX_FULL) {
                                ecmd.duplex = DUPLEX_FULL;
                                need_update = 1;
                        }
                        break;
                default:
                        break;
        }

        if (need_update) {
                ecmd.cmd = ETHTOOL_SSET;

                r = ioctl(*fd, SIOCETHTOOL, &ifr);
                if (r < 0)
                        return -errno;
        }

        return 0;
}
