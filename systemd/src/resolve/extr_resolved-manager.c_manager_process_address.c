
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;


union in_addr_union {int in6; int in; } ;
typedef int uint16_t ;
struct TYPE_13__ {int links; } ;
typedef TYPE_1__ sd_netlink_message ;
typedef TYPE_1__ sd_netlink ;
typedef TYPE_1__ Manager ;
typedef int LinkAddress ;
typedef int Link ;




 int IFA_ADDRESS ;
 int IFA_LOCAL ;
 int INT_TO_PTR (int) ;


 int assert (TYPE_1__*) ;
 int * hashmap_get (int ,int ) ;
 int link_address_free (int *) ;
 int link_address_new (int *,int **,int,union in_addr_union*) ;
 int link_address_update_rtnl (int *,TYPE_1__*) ;
 int * link_find_address (int *,int,union in_addr_union*) ;
 int log_warning_errno (int,char*) ;
 int sd_netlink_message_get_type (TYPE_1__*,int*) ;
 int sd_netlink_message_read_in6_addr (TYPE_1__*,int ,int *) ;
 int sd_netlink_message_read_in_addr (TYPE_1__*,int ,int *) ;
 int sd_rtnl_message_addr_get_family (TYPE_1__*,int*) ;
 int sd_rtnl_message_addr_get_ifindex (TYPE_1__*,int*) ;

__attribute__((used)) static int manager_process_address(sd_netlink *rtnl, sd_netlink_message *mm, void *userdata) {
        Manager *m = userdata;
        union in_addr_union address;
        uint16_t type;
        int r, ifindex, family;
        LinkAddress *a;
        Link *l;

        assert(rtnl);
        assert(mm);
        assert(m);

        r = sd_netlink_message_get_type(mm, &type);
        if (r < 0)
                goto fail;

        r = sd_rtnl_message_addr_get_ifindex(mm, &ifindex);
        if (r < 0)
                goto fail;

        l = hashmap_get(m->links, INT_TO_PTR(ifindex));
        if (!l)
                return 0;

        r = sd_rtnl_message_addr_get_family(mm, &family);
        if (r < 0)
                goto fail;

        switch (family) {

        case 131:
                r = sd_netlink_message_read_in_addr(mm, IFA_LOCAL, &address.in);
                if (r < 0) {
                        r = sd_netlink_message_read_in_addr(mm, IFA_ADDRESS, &address.in);
                        if (r < 0)
                                goto fail;
                }

                break;

        case 130:
                r = sd_netlink_message_read_in6_addr(mm, IFA_LOCAL, &address.in6);
                if (r < 0) {
                        r = sd_netlink_message_read_in6_addr(mm, IFA_ADDRESS, &address.in6);
                        if (r < 0)
                                goto fail;
                }

                break;

        default:
                return 0;
        }

        a = link_find_address(l, family, &address);

        switch (type) {

        case 128:

                if (!a) {
                        r = link_address_new(l, &a, family, &address);
                        if (r < 0)
                                return r;
                }

                r = link_address_update_rtnl(a, mm);
                if (r < 0)
                        return r;

                break;

        case 129:
                link_address_free(a);
                break;
        }

        return 0;

fail:
        log_warning_errno(r, "Failed to process RTNL address message: %m");
        return 0;
}
