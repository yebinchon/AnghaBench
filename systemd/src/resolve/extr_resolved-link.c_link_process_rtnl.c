
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int ifname; int operstate; int mtu; int flags; } ;
typedef TYPE_1__ sd_netlink_message ;
typedef TYPE_1__ Link ;


 int IFLA_IFNAME ;
 int IFLA_MTU ;
 int IFLA_OPERSTATE ;
 int assert (TYPE_1__*) ;
 int free_and_strdup (int *,char const*) ;
 int link_add_rrs (TYPE_1__*,int) ;
 int link_allocate_scopes (TYPE_1__*) ;
 scalar_t__ sd_netlink_message_read_string (TYPE_1__*,int ,char const**) ;
 int sd_netlink_message_read_u32 (TYPE_1__*,int ,int *) ;
 int sd_netlink_message_read_u8 (TYPE_1__*,int ,int *) ;
 int sd_rtnl_message_link_get_flags (TYPE_1__*,int *) ;

int link_process_rtnl(Link *l, sd_netlink_message *m) {
        const char *n = ((void*)0);
        int r;

        assert(l);
        assert(m);

        r = sd_rtnl_message_link_get_flags(m, &l->flags);
        if (r < 0)
                return r;

        (void) sd_netlink_message_read_u32(m, IFLA_MTU, &l->mtu);
        (void) sd_netlink_message_read_u8(m, IFLA_OPERSTATE, &l->operstate);

        if (sd_netlink_message_read_string(m, IFLA_IFNAME, &n) >= 0) {
                r = free_and_strdup(&l->ifname, n);
                if (r < 0)
                        return r;
        }

        link_allocate_scopes(l);
        link_add_rrs(l, 0);

        return 0;
}
