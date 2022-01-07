
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int usec_t ;
struct TYPE_7__ {int time_event_source; int io_event_source; } ;
typedef TYPE_1__ sd_netlink ;
typedef TYPE_1__ sd_event_source ;


 int assert (TYPE_1__*) ;
 int sd_event_source_set_enabled (int ,int) ;
 int sd_event_source_set_io_events (int ,int) ;
 int sd_event_source_set_time (int ,int ) ;
 int sd_netlink_get_events (TYPE_1__*) ;
 int sd_netlink_get_timeout (TYPE_1__*,int *) ;

__attribute__((used)) static int prepare_callback(sd_event_source *s, void *userdata) {
        sd_netlink *rtnl = userdata;
        int r, e;
        usec_t until;

        assert(s);
        assert(rtnl);

        e = sd_netlink_get_events(rtnl);
        if (e < 0)
                return e;

        r = sd_event_source_set_io_events(rtnl->io_event_source, e);
        if (r < 0)
                return r;

        r = sd_netlink_get_timeout(rtnl, &until);
        if (r < 0)
                return r;
        if (r > 0) {
                int j;

                j = sd_event_source_set_time(rtnl->time_event_source, until);
                if (j < 0)
                        return j;
        }

        r = sd_event_source_set_enabled(rtnl->time_event_source, r > 0);
        if (r < 0)
                return r;

        return 1;
}
