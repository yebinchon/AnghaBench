
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int ifname; int links_by_name; struct TYPE_10__* manager; int flags; } ;
typedef TYPE_1__ sd_netlink_message ;
typedef TYPE_1__ Link ;


 int ENOMEM ;
 int IFLA_IFNAME ;
 int assert (TYPE_1__*) ;
 int assert_se (int) ;
 int free_and_replace (int ,char*) ;
 int hashmap_put (int ,int ,TYPE_1__*) ;
 TYPE_1__* hashmap_remove (int ,int ) ;
 int sd_netlink_message_read_string (TYPE_1__*,int ,char const**) ;
 int sd_rtnl_message_link_get_flags (TYPE_1__*,int *) ;
 char* strdup (char const*) ;
 int streq (int ,char const*) ;

int link_update_rtnl(Link *l, sd_netlink_message *m) {
        const char *ifname;
        int r;

        assert(l);
        assert(l->manager);
        assert(m);

        r = sd_rtnl_message_link_get_flags(m, &l->flags);
        if (r < 0)
                return r;

        r = sd_netlink_message_read_string(m, IFLA_IFNAME, &ifname);
        if (r < 0)
                return r;

        if (!streq(l->ifname, ifname)) {
                char *new_ifname;

                new_ifname = strdup(ifname);
                if (!new_ifname)
                        return -ENOMEM;

                assert_se(hashmap_remove(l->manager->links_by_name, l->ifname) == l);
                free_and_replace(l->ifname, new_ifname);

                r = hashmap_put(l->manager->links_by_name, l->ifname, l);
                if (r < 0)
                        return r;
        }

        return 0;
}
