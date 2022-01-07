
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ifreq {scalar_t__ kind; struct ifreq* ifname; int ifr_name; int ifr_flags; } ;
struct TYPE_4__ {scalar_t__ vnet_hdr; scalar_t__ multi_queue; int packet_info; } ;
typedef TYPE_1__ TunTap ;
typedef struct ifreq NetDev ;


 int IFF_MULTI_QUEUE ;
 int IFF_NO_PI ;
 int IFF_TAP ;
 int IFF_TUN ;
 int IFF_VNET_HDR ;
 scalar_t__ IFNAMSIZ ;
 scalar_t__ NETDEV_KIND_TAP ;
 TYPE_1__* TAP (struct ifreq*) ;
 TYPE_1__* TUN (struct ifreq*) ;
 int assert (struct ifreq*) ;
 int strncpy (int ,struct ifreq*,scalar_t__) ;

__attribute__((used)) static int netdev_fill_tuntap_message(NetDev *netdev, struct ifreq *ifr) {
        TunTap *t;

        assert(netdev);
        assert(netdev->ifname);
        assert(ifr);

        if (netdev->kind == NETDEV_KIND_TAP) {
                t = TAP(netdev);
                ifr->ifr_flags |= IFF_TAP;
        } else {
                t = TUN(netdev);
                ifr->ifr_flags |= IFF_TUN;
        }

        if (!t->packet_info)
                ifr->ifr_flags |= IFF_NO_PI;

        if (t->multi_queue)
                ifr->ifr_flags |= IFF_MULTI_QUEUE;

        if (t->vnet_hdr)
                ifr->ifr_flags |= IFF_VNET_HDR;

        strncpy(ifr->ifr_name, netdev->ifname, IFNAMSIZ-1);

        return 0;
}
