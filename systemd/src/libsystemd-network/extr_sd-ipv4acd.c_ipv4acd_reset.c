
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int fd; int receive_message_event_source; int timer_event_source; } ;
typedef TYPE_1__ sd_ipv4acd ;


 int IPV4ACD_STATE_INIT ;
 int assert (TYPE_1__*) ;
 int event_source_disable (int ) ;
 int ipv4acd_set_state (TYPE_1__*,int ,int) ;
 int safe_close (int ) ;
 int sd_event_source_unref (int ) ;

__attribute__((used)) static void ipv4acd_reset(sd_ipv4acd *acd) {
        assert(acd);

        (void) event_source_disable(acd->timer_event_source);
        acd->receive_message_event_source = sd_event_source_unref(acd->receive_message_event_source);

        acd->fd = safe_close(acd->fd);

        ipv4acd_set_state(acd, IPV4ACD_STATE_INIT, 1);
}
