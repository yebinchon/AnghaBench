
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_netlink_message ;
typedef int sd_netlink ;
typedef int NetDev ;


 int assert (int *) ;
 int log_netdev_debug (int *,char*) ;
 int log_netdev_warning_errno (int *,int,char*) ;
 int sd_netlink_message_get_errno (int *) ;

__attribute__((used)) static int netdev_bridge_set_handler(sd_netlink *rtnl, sd_netlink_message *m, NetDev *netdev) {
        int r;

        assert(netdev);
        assert(m);

        r = sd_netlink_message_get_errno(m);
        if (r < 0) {
                log_netdev_warning_errno(netdev, r, "Bridge parameters could not be set: %m");
                return 1;
        }

        log_netdev_debug(netdev, "Bridge parameters set success");

        return 1;
}
