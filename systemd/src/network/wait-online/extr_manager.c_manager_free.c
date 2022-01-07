
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int event; int rtnl; int rtnl_event_source; int network_monitor; int network_monitor_event_source; int links_by_name; int links; } ;
typedef TYPE_1__ Manager ;


 int free (TYPE_1__*) ;
 int hashmap_free (int ) ;
 int hashmap_free_with_destructor (int ,int ) ;
 int link_free ;
 int sd_event_source_unref (int ) ;
 int sd_event_unref (int ) ;
 int sd_netlink_unref (int ) ;
 int sd_network_monitor_unref (int ) ;

void manager_free(Manager *m) {
        if (!m)
                return;

        hashmap_free_with_destructor(m->links, link_free);
        hashmap_free(m->links_by_name);

        sd_event_source_unref(m->network_monitor_event_source);
        sd_network_monitor_unref(m->network_monitor);

        sd_event_source_unref(m->rtnl_event_source);
        sd_netlink_unref(m->rtnl);

        sd_event_unref(m->event);
        free(m);

        return;
}
