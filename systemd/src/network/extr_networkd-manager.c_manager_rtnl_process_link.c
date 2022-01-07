
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int sd_netlink_message ;
typedef int sd_netlink ;
typedef int NetDev ;
typedef int Manager ;
typedef int Link ;


 int IFLA_IFNAME ;
 int IN_SET (int,int,int) ;


 int assert (int *) ;
 int assert_not_reached (char*) ;
 int link_add (int *,int *,int **) ;
 int link_drop (int *) ;
 int link_get (int *,int,int **) ;
 int link_update (int *,int *) ;
 int log_warning (char*,int) ;
 int log_warning_errno (int,char*) ;
 int netdev_drop (int *) ;
 int netdev_get (int *,char const*,int **) ;
 int netdev_set_ifindex (int *,int *) ;
 int sd_netlink_message_get_errno (int *) ;
 int sd_netlink_message_get_type (int *,int*) ;
 scalar_t__ sd_netlink_message_is_error (int *) ;
 int sd_netlink_message_read_string (int *,int ,char const**) ;
 int sd_rtnl_message_link_get_ifindex (int *,int*) ;

__attribute__((used)) static int manager_rtnl_process_link(sd_netlink *rtnl, sd_netlink_message *message, void *userdata) {
        Manager *m = userdata;
        Link *link = ((void*)0);
        NetDev *netdev = ((void*)0);
        uint16_t type;
        const char *name;
        int r, ifindex;

        assert(rtnl);
        assert(message);
        assert(m);

        if (sd_netlink_message_is_error(message)) {
                r = sd_netlink_message_get_errno(message);
                if (r < 0)
                        log_warning_errno(r, "rtnl: Could not receive link message, ignoring: %m");

                return 0;
        }

        r = sd_netlink_message_get_type(message, &type);
        if (r < 0) {
                log_warning_errno(r, "rtnl: Could not get message type, ignoring: %m");
                return 0;
        } else if (!IN_SET(type, 128, 129)) {
                log_warning("rtnl: Received unexpected message type %u when processing link, ignoring.", type);
                return 0;
        }

        r = sd_rtnl_message_link_get_ifindex(message, &ifindex);
        if (r < 0) {
                log_warning_errno(r, "rtnl: Could not get ifindex from link message, ignoring: %m");
                return 0;
        } else if (ifindex <= 0) {
                log_warning("rtnl: received link message with invalid ifindex %d, ignoring.", ifindex);
                return 0;
        }

        r = sd_netlink_message_read_string(message, IFLA_IFNAME, &name);
        if (r < 0) {
                log_warning_errno(r, "rtnl: Received link message without ifname, ignoring: %m");
                return 0;
        }

        (void) link_get(m, ifindex, &link);
        (void) netdev_get(m, name, &netdev);

        switch (type) {
        case 128:
                if (!link) {

                        r = link_add(m, message, &link);
                        if (r < 0) {
                                log_warning_errno(r, "Could not process new link message, ignoring: %m");
                                return 0;
                        }
                }

                if (netdev) {

                        r = netdev_set_ifindex(netdev, message);
                        if (r < 0) {
                                log_warning_errno(r, "Could not process new link message for netdev, ignoring: %m");
                                return 0;
                        }
                }

                r = link_update(link, message);
                if (r < 0) {
                        log_warning_errno(r, "Could not process link message, ignoring: %m");
                        return 0;
                }

                break;

        case 129:
                link_drop(link);
                netdev_drop(netdev);

                break;

        default:
                assert_not_reached("Received link message with invalid RTNL message type.");
        }

        return 1;
}
