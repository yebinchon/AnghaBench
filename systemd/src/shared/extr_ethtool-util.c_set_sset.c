
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ifreq {void* ifr_data; } ;
struct TYPE_4__ {scalar_t__ cmd; scalar_t__ link_mode_masks_nwords; int eth_tp_mdix_ctrl; int eth_tp_mdix; int mdio_support; int autoneg; int phy_address; int port; int duplex; int speed; } ;
struct TYPE_3__ {int * lp_advertising; int * advertising; int * supported; } ;
struct ethtool_link_usettings {TYPE_2__ base; TYPE_1__ link_modes; } ;
struct ethtool_cmd {int eth_tp_mdix_ctrl; int eth_tp_mdix; int mdio_support; int autoneg; int phy_address; int port; int duplex; int lp_advertising; int advertising; int supported; int cmd; } ;


 int EINVAL ;
 scalar_t__ ETHTOOL_GSET ;
 int ETHTOOL_SSET ;
 int SIOCETHTOOL ;
 int errno ;
 int ethtool_cmd_speed_set (struct ethtool_cmd*,int ) ;
 int ioctl (int,int ,struct ifreq*) ;

__attribute__((used)) static int set_sset(int fd, struct ifreq *ifr, const struct ethtool_link_usettings *u) {
        struct ethtool_cmd ecmd = {
                .cmd = ETHTOOL_SSET,
        };
        int r;

        if (u->base.cmd != ETHTOOL_GSET || u->base.link_mode_masks_nwords <= 0)
                return -EINVAL;

        ecmd.supported = u->link_modes.supported[0];
        ecmd.advertising = u->link_modes.advertising[0];
        ecmd.lp_advertising = u->link_modes.lp_advertising[0];

        ethtool_cmd_speed_set(&ecmd, u->base.speed);

        ecmd.duplex = u->base.duplex;
        ecmd.port = u->base.port;
        ecmd.phy_address = u->base.phy_address;
        ecmd.autoneg = u->base.autoneg;
        ecmd.mdio_support = u->base.mdio_support;
        ecmd.eth_tp_mdix = u->base.eth_tp_mdix;
        ecmd.eth_tp_mdix_ctrl = u->base.eth_tp_mdix_ctrl;

        ifr->ifr_data = (void *) &ecmd;

        r = ioctl(fd, SIOCETHTOOL, ifr);
        if (r < 0)
                return -errno;

        return 0;
}
