
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int event; } ;
typedef TYPE_1__ sd_ipv4acd ;


 int EINVAL ;
 int assert_return (TYPE_1__*,int ) ;
 int sd_event_unref (int ) ;

int sd_ipv4acd_detach_event(sd_ipv4acd *acd) {
        assert_return(acd, -EINVAL);

        acd->event = sd_event_unref(acd->event);

        return 0;
}
