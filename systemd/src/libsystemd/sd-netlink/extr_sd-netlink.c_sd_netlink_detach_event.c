
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* event; void* time_event_source; void* io_event_source; } ;
typedef TYPE_1__ sd_netlink ;


 int EINVAL ;
 int ENXIO ;
 int assert_return (TYPE_1__*,int ) ;
 void* sd_event_source_unref (void*) ;
 TYPE_1__* sd_event_unref (TYPE_1__*) ;

int sd_netlink_detach_event(sd_netlink *rtnl) {
        assert_return(rtnl, -EINVAL);
        assert_return(rtnl->event, -ENXIO);

        rtnl->io_event_source = sd_event_source_unref(rtnl->io_event_source);

        rtnl->time_event_source = sd_event_source_unref(rtnl->time_event_source);

        rtnl->event = sd_event_unref(rtnl->event);

        return 0;
}
