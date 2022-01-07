
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int rtnl; int event; } ;
typedef TYPE_1__ Manager ;


 int RCVBUF_SIZE ;
 int RTM_DELADDR ;
 int RTM_DELLINK ;
 int RTM_DELNEIGH ;
 int RTM_DELNEXTHOP ;
 int RTM_DELROUTE ;
 int RTM_DELRULE ;
 int RTM_NEWADDR ;
 int RTM_NEWLINK ;
 int RTM_NEWNEIGH ;
 int RTM_NEWNEXTHOP ;
 int RTM_NEWROUTE ;
 int RTM_NEWRULE ;
 int assert (TYPE_1__*) ;
 int manager_rtnl_process_address ;
 int manager_rtnl_process_link ;
 int manager_rtnl_process_neighbor ;
 int manager_rtnl_process_nexthop ;
 int manager_rtnl_process_route ;
 int manager_rtnl_process_rule ;
 int sd_netlink_add_match (int ,int *,int ,int *,int *,TYPE_1__*,char*) ;
 int sd_netlink_attach_event (int ,int ,int ) ;
 int sd_netlink_inc_rcvbuf (int ,int ) ;
 int sd_netlink_open (int *) ;
 int sd_netlink_open_fd (int *,int) ;
 int systemd_netlink_fd () ;

__attribute__((used)) static int manager_connect_rtnl(Manager *m) {
        int fd, r;

        assert(m);

        fd = systemd_netlink_fd();
        if (fd < 0)
                r = sd_netlink_open(&m->rtnl);
        else
                r = sd_netlink_open_fd(&m->rtnl, fd);
        if (r < 0)
                return r;

        r = sd_netlink_inc_rcvbuf(m->rtnl, RCVBUF_SIZE);
        if (r < 0)
                return r;

        r = sd_netlink_attach_event(m->rtnl, m->event, 0);
        if (r < 0)
                return r;

        r = sd_netlink_add_match(m->rtnl, ((void*)0), RTM_NEWLINK, &manager_rtnl_process_link, ((void*)0), m, "network-rtnl_process_link");
        if (r < 0)
                return r;

        r = sd_netlink_add_match(m->rtnl, ((void*)0), RTM_DELLINK, &manager_rtnl_process_link, ((void*)0), m, "network-rtnl_process_link");
        if (r < 0)
                return r;

        r = sd_netlink_add_match(m->rtnl, ((void*)0), RTM_NEWADDR, &manager_rtnl_process_address, ((void*)0), m, "network-rtnl_process_address");
        if (r < 0)
                return r;

        r = sd_netlink_add_match(m->rtnl, ((void*)0), RTM_DELADDR, &manager_rtnl_process_address, ((void*)0), m, "network-rtnl_process_address");
        if (r < 0)
                return r;

        r = sd_netlink_add_match(m->rtnl, ((void*)0), RTM_NEWNEIGH, &manager_rtnl_process_neighbor, ((void*)0), m, "network-rtnl_process_neighbor");
        if (r < 0)
                return r;

        r = sd_netlink_add_match(m->rtnl, ((void*)0), RTM_DELNEIGH, &manager_rtnl_process_neighbor, ((void*)0), m, "network-rtnl_process_neighbor");
        if (r < 0)
                return r;

        r = sd_netlink_add_match(m->rtnl, ((void*)0), RTM_NEWROUTE, &manager_rtnl_process_route, ((void*)0), m, "network-rtnl_process_route");
        if (r < 0)
                return r;

        r = sd_netlink_add_match(m->rtnl, ((void*)0), RTM_DELROUTE, &manager_rtnl_process_route, ((void*)0), m, "network-rtnl_process_route");
        if (r < 0)
                return r;

        r = sd_netlink_add_match(m->rtnl, ((void*)0), RTM_NEWRULE, &manager_rtnl_process_rule, ((void*)0), m, "network-rtnl_process_rule");
        if (r < 0)
                return r;

        r = sd_netlink_add_match(m->rtnl, ((void*)0), RTM_DELRULE, &manager_rtnl_process_rule, ((void*)0), m, "network-rtnl_process_rule");
        if (r < 0)
                return r;

        r = sd_netlink_add_match(m->rtnl, ((void*)0), RTM_NEWNEXTHOP, &manager_rtnl_process_nexthop, ((void*)0), m, "network-rtnl_process_nexthop");
        if (r < 0)
                return r;

        r = sd_netlink_add_match(m->rtnl, ((void*)0), RTM_DELNEXTHOP, &manager_rtnl_process_nexthop, ((void*)0), m, "network-rtnl_process_nexthop");
        if (r < 0)
                return r;

        return 0;
}
