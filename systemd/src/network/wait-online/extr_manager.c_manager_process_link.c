
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_12__ {int links; } ;
typedef TYPE_1__ sd_netlink_message ;
typedef TYPE_1__ sd_netlink ;
typedef TYPE_1__ Manager ;
typedef int Link ;


 int ENODATA ;
 int IFLA_IFNAME ;
 int INT_TO_PTR (int) ;


 int assert (TYPE_1__*) ;
 int * hashmap_get (int ,int ) ;
 int link_free (int *) ;
 int link_new (TYPE_1__*,int **,int,char const*) ;
 int link_update_monitor (int *) ;
 int link_update_rtnl (int *,TYPE_1__*) ;
 int log_debug (char*,int) ;
 int log_error_errno (int,char*) ;
 int log_link_debug (int *,char*) ;
 int log_link_warning_errno (int *,int,char*) ;
 int log_warning (char*,int) ;
 int log_warning_errno (int,char*) ;
 int sd_netlink_message_get_type (TYPE_1__*,int*) ;
 int sd_netlink_message_read_string (TYPE_1__*,int ,char const**) ;
 int sd_rtnl_message_link_get_ifindex (TYPE_1__*,int*) ;

__attribute__((used)) static int manager_process_link(sd_netlink *rtnl, sd_netlink_message *mm, void *userdata) {
        Manager *m = userdata;
        uint16_t type;
        Link *l;
        const char *ifname;
        int ifindex, r;

        assert(rtnl);
        assert(m);
        assert(mm);

        r = sd_netlink_message_get_type(mm, &type);
        if (r < 0) {
                log_warning_errno(r, "rtnl: Could not get message type, ignoring: %m");
                return 0;
        }

        r = sd_rtnl_message_link_get_ifindex(mm, &ifindex);
        if (r < 0) {
                log_warning_errno(r, "rtnl: Could not get ifindex from link, ignoring: %m");
                return 0;
        } else if (ifindex <= 0) {
                log_warning("rtnl: received link message with invalid ifindex %d, ignoring", ifindex);
                return 0;
        }

        r = sd_netlink_message_read_string(mm, IFLA_IFNAME, &ifname);
        if (r < 0) {
                log_warning_errno(r, "rtnl: Received link message without ifname, ignoring: %m");
                return 0;
        }

        l = hashmap_get(m->links, INT_TO_PTR(ifindex));

        switch (type) {

        case 128:
                if (!l) {
                        log_debug("Found link %i", ifindex);

                        r = link_new(m, &l, ifindex, ifname);
                        if (r < 0)
                                return log_error_errno(r, "Failed to create link object: %m");
                }

                r = link_update_rtnl(l, mm);
                if (r < 0)
                        log_link_warning_errno(l, r, "Failed to process RTNL link message, ignoring: %m");

                r = link_update_monitor(l);
                if (r < 0 && r != -ENODATA)
                        log_link_warning_errno(l, r, "Failed to update link state, ignoring: %m");

                break;

        case 129:
                if (l) {
                        log_link_debug(l, "Removing link");
                        link_free(l);
                }

                break;
        }

        return 0;
}
