
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int link_netlink_message_handler_t ;
struct TYPE_8__ {struct TYPE_8__* rtnl; struct TYPE_8__* manager; } ;
typedef TYPE_1__ NetDev ;
typedef int Link ;





 int assert (TYPE_1__*) ;
 int assert_not_reached (char*) ;
 int netdev_create (TYPE_1__*,int *,int ) ;
 int netdev_create_after_configured (TYPE_1__*,int *) ;
 int netdev_enslave (TYPE_1__*,int *,int ) ;
 int netdev_get_create_type (TYPE_1__*) ;

int netdev_join(NetDev *netdev, Link *link, link_netlink_message_handler_t callback) {
        int r;

        assert(netdev);
        assert(netdev->manager);
        assert(netdev->manager->rtnl);

        switch (netdev_get_create_type(netdev)) {
        case 129:
                r = netdev_enslave(netdev, link, callback);
                if (r < 0)
                        return r;

                break;
        case 128:
                r = netdev_create(netdev, link, callback);
                if (r < 0)
                        return r;

                break;
        case 130:
                r = netdev_create_after_configured(netdev, link);
                if (r < 0)
                        return r;
                break;
        default:
                assert_not_reached("Can not join independent netdev");
        }

        return 0;
}
