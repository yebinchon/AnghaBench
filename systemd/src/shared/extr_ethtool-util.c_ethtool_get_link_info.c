
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct ifreq {void* ifr_data; int ifr_name; } ;
struct ethtool_cmd {int autoneg; int port; int duplex; int cmd; } ;
typedef int NetDevPort ;
typedef int Duplex ;


 int ETHTOOL_GSET ;
 int IFNAMSIZ ;
 int SIOCETHTOOL ;
 size_t SIZE_MAX ;
 scalar_t__ SPEED_UNKNOWN ;
 int errno ;
 scalar_t__ ethtool_cmd_speed (struct ethtool_cmd*) ;
 int ethtool_connect_or_warn (int*,int) ;
 int ioctl (int,int ,struct ifreq*) ;
 int strscpy (int ,int ,char const*) ;

int ethtool_get_link_info(int *fd, const char *ifname,
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
                r = ethtool_connect_or_warn(fd, 0);
                if (r < 0)
                        return r;
        }

        strscpy(ifr.ifr_name, IFNAMSIZ, ifname);

        r = ioctl(*fd, SIOCETHTOOL, &ifr);
        if (r < 0)
                return -errno;

        if (ret_autonegotiation)
                *ret_autonegotiation = ecmd.autoneg;

        if (ret_speed) {
                uint32_t speed;

                speed = ethtool_cmd_speed(&ecmd);
                *ret_speed = speed == (uint32_t) SPEED_UNKNOWN ?
                        SIZE_MAX : (size_t) speed * 1000 * 1000;
        }

        if (ret_duplex)
                *ret_duplex = ecmd.duplex;

        if (ret_port)
                *ret_port = ecmd.port;

        return 0;
}
