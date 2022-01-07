
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifreq {int dummy; } ;
typedef int NetDev ;


 int netdev_fill_tuntap_message (int *,struct ifreq*) ;
 int netdev_tuntap_add (int *,struct ifreq*) ;

__attribute__((used)) static int netdev_create_tuntap(NetDev *netdev) {
        struct ifreq ifr = {};
        int r;

        r = netdev_fill_tuntap_message(netdev, &ifr);
        if (r < 0)
                return r;

        return netdev_tuntap_add(netdev, &ifr);
}
