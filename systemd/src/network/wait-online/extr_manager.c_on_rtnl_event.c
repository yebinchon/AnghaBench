
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sd_netlink_message ;
typedef int sd_netlink ;
struct TYPE_4__ {int event; } ;
typedef TYPE_1__ Manager ;


 scalar_t__ manager_configured (TYPE_1__*) ;
 int manager_process_link (int *,int *,TYPE_1__*) ;
 int sd_event_exit (int ,int ) ;

__attribute__((used)) static int on_rtnl_event(sd_netlink *rtnl, sd_netlink_message *mm, void *userdata) {
        Manager *m = userdata;
        int r;

        r = manager_process_link(rtnl, mm, m);
        if (r < 0)
                return r;

        if (manager_configured(m))
                sd_event_exit(m->event, 0);

        return 1;
}
