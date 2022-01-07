
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int mode; } ;
struct TYPE_8__ {int ifname; int manager; int kind; } ;
struct TYPE_7__ {scalar_t__ kind; } ;
typedef TYPE_1__ NetDev ;
typedef TYPE_2__ Link ;
typedef int IPVlanMode ;


 TYPE_5__* IPVLAN (TYPE_1__*) ;
 scalar_t__ NETDEV_KIND_IPVLAN ;
 int _NETDEV_IPVLAN_MODE_INVALID ;
 scalar_t__ netdev_get (int ,int ,TYPE_1__**) ;
 int streq_ptr (int ,char*) ;

IPVlanMode link_get_ipvlan_mode(Link *link) {
        NetDev *netdev;

        if (!streq_ptr(link->kind, "ipvlan"))
                return _NETDEV_IPVLAN_MODE_INVALID;

        if (netdev_get(link->manager, link->ifname, &netdev) < 0)
                return _NETDEV_IPVLAN_MODE_INVALID;

        if (netdev->kind != NETDEV_KIND_IPVLAN)
                return _NETDEV_IPVLAN_MODE_INVALID;

        return IPVLAN(netdev)->mode;
}
