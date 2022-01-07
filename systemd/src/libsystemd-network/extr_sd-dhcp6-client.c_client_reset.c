
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int state; int timeout_t2; int timeout_t1; int timeout_resend_expire; int timeout_resend; scalar_t__ retransmit_count; scalar_t__ retransmit_time; scalar_t__ transaction_start; scalar_t__ transaction_id; int receive_message; int lease; } ;
typedef TYPE_1__ sd_dhcp6_client ;


 int DHCP6_STATE_STOPPED ;
 int assert (TYPE_1__*) ;
 int event_source_disable (int ) ;
 int sd_dhcp6_lease_unref (int ) ;
 int sd_event_source_unref (int ) ;

__attribute__((used)) static int client_reset(sd_dhcp6_client *client) {
        assert(client);

        client->lease = sd_dhcp6_lease_unref(client->lease);

        client->receive_message =
                sd_event_source_unref(client->receive_message);

        client->transaction_id = 0;
        client->transaction_start = 0;

        client->retransmit_time = 0;
        client->retransmit_count = 0;

        (void) event_source_disable(client->timeout_resend);
        (void) event_source_disable(client->timeout_resend_expire);
        (void) event_source_disable(client->timeout_t1);
        (void) event_source_disable(client->timeout_t2);

        client->state = DHCP6_STATE_STOPPED;

        return 0;
}
