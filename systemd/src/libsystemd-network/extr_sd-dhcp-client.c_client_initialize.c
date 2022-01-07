
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lease; scalar_t__ xid; int state; scalar_t__ attempt; int timeout_expire; int timeout_t2; int timeout_t1; int timeout_resend; int fd; int receive_message; } ;
typedef TYPE_1__ sd_dhcp_client ;


 int DHCP_STATE_INIT ;
 int EINVAL ;
 int assert_return (TYPE_1__*,int ) ;
 int asynchronous_close (int ) ;
 int event_source_disable (int ) ;
 int sd_dhcp_lease_unref (int ) ;
 int sd_event_source_unref (int ) ;

__attribute__((used)) static int client_initialize(sd_dhcp_client *client) {
        assert_return(client, -EINVAL);

        client->receive_message = sd_event_source_unref(client->receive_message);

        client->fd = asynchronous_close(client->fd);

        (void) event_source_disable(client->timeout_resend);
        (void) event_source_disable(client->timeout_t1);
        (void) event_source_disable(client->timeout_t2);
        (void) event_source_disable(client->timeout_expire);

        client->attempt = 0;

        client->state = DHCP_STATE_INIT;
        client->xid = 0;

        client->lease = sd_dhcp_lease_unref(client->lease);

        return 0;
}
