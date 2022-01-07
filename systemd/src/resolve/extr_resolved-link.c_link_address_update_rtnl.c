
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int link; int scope; int flags; } ;
typedef TYPE_1__ sd_netlink_message ;
typedef TYPE_1__ LinkAddress ;


 int assert (TYPE_1__*) ;
 int link_add_rrs (int ,int) ;
 int link_allocate_scopes (int ) ;
 int sd_rtnl_message_addr_get_flags (TYPE_1__*,int *) ;
 int sd_rtnl_message_addr_get_scope (TYPE_1__*,int *) ;

int link_address_update_rtnl(LinkAddress *a, sd_netlink_message *m) {
        int r;
        assert(a);
        assert(m);

        r = sd_rtnl_message_addr_get_flags(m, &a->flags);
        if (r < 0)
                return r;

        sd_rtnl_message_addr_get_scope(m, &a->scope);

        link_allocate_scopes(a->link);
        link_add_rrs(a->link, 0);

        return 0;
}
