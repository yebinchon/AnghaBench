
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int timer_event_source; } ;
typedef TYPE_1__ sd_ipv4acd ;


 int assert (TYPE_1__*) ;
 int ipv4acd_reset (TYPE_1__*) ;
 TYPE_1__* mfree (TYPE_1__*) ;
 int sd_event_source_unref (int ) ;
 int sd_ipv4acd_detach_event (TYPE_1__*) ;

__attribute__((used)) static sd_ipv4acd *ipv4acd_free(sd_ipv4acd *acd) {
        assert(acd);

        acd->timer_event_source = sd_event_source_unref(acd->timer_event_source);

        ipv4acd_reset(acd);
        sd_ipv4acd_detach_event(acd);

        return mfree(acd);
}
