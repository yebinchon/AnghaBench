
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_18__ {int links; } ;
typedef TYPE_1__ sd_netlink_message ;
typedef TYPE_1__ sd_netlink ;
struct TYPE_19__ {int ifindex; int ifname; } ;
typedef TYPE_1__ Manager ;
typedef TYPE_4__ Link ;


 int INT_TO_PTR (int) ;


 int assert (TYPE_1__*) ;
 TYPE_4__* hashmap_get (int ,int ) ;
 int link_free (TYPE_4__*) ;
 int link_new (TYPE_1__*,TYPE_4__**,int) ;
 int link_process_rtnl (TYPE_4__*,TYPE_1__*) ;
 int link_remove_user (TYPE_4__*) ;
 int link_update (TYPE_4__*) ;
 int log_debug (char*,int,int ) ;
 int log_warning_errno (int,char*) ;
 int sd_netlink_message_get_type (TYPE_1__*,int*) ;
 int sd_rtnl_message_link_get_ifindex (TYPE_1__*,int*) ;

__attribute__((used)) static int manager_process_link(sd_netlink *rtnl, sd_netlink_message *mm, void *userdata) {
        Manager *m = userdata;
        uint16_t type;
        Link *l;
        int ifindex, r;

        assert(rtnl);
        assert(m);
        assert(mm);

        r = sd_netlink_message_get_type(mm, &type);
        if (r < 0)
                goto fail;

        r = sd_rtnl_message_link_get_ifindex(mm, &ifindex);
        if (r < 0)
                goto fail;

        l = hashmap_get(m->links, INT_TO_PTR(ifindex));

        switch (type) {

        case 128:{
                bool is_new = !l;

                if (!l) {
                        r = link_new(m, &l, ifindex);
                        if (r < 0)
                                goto fail;
                }

                r = link_process_rtnl(l, mm);
                if (r < 0)
                        goto fail;

                r = link_update(l);
                if (r < 0)
                        goto fail;

                if (is_new)
                        log_debug("Found new link %i/%s", ifindex, l->ifname);

                break;
        }

        case 129:
                if (l) {
                        log_debug("Removing link %i/%s", l->ifindex, l->ifname);
                        link_remove_user(l);
                        link_free(l);
                }

                break;
        }

        return 0;

fail:
        log_warning_errno(r, "Failed to process RTNL link message: %m");
        return 0;
}
