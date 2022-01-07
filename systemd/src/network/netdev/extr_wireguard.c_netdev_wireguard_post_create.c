
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_netlink_message ;
typedef int NetDev ;
typedef int Link ;


 int * WIREGUARD (int *) ;
 int assert (int *) ;
 int resolve_endpoints (int *) ;
 int wireguard_set_interface (int *) ;

__attribute__((used)) static int netdev_wireguard_post_create(NetDev *netdev, Link *link, sd_netlink_message *m) {
        assert(netdev);
        assert(WIREGUARD(netdev));

        (void) wireguard_set_interface(netdev);
        resolve_endpoints(netdev);
        return 0;
}
