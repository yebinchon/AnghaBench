
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
typedef int sd_event_source ;
struct TYPE_6__ {int fd; int port; int arp_type; int mac_addr_len; int mac_addr; int xid; int link; int ifindex; scalar_t__ attempt; int state; int receive_message; } ;
typedef TYPE_1__ sd_dhcp_client ;


 int DHCP_CLIENT_DONT_DESTROY (TYPE_1__*) ;
 int DHCP_STATE_REBINDING ;
 int assert (TYPE_1__*) ;
 int asynchronous_close (int) ;
 int client_initialize_events (TYPE_1__*,int ) ;
 int client_receive_message_raw ;
 int client_stop (TYPE_1__*,int) ;
 int dhcp_network_bind_raw_socket (int ,int *,int ,int ,int ,int ,int ) ;
 int sd_event_source_unref (int ) ;

__attribute__((used)) static int client_timeout_t2(sd_event_source *s, uint64_t usec, void *userdata) {
        sd_dhcp_client *client = userdata;
        DHCP_CLIENT_DONT_DESTROY(client);
        int r;

        assert(client);

        client->receive_message = sd_event_source_unref(client->receive_message);
        client->fd = asynchronous_close(client->fd);

        client->state = DHCP_STATE_REBINDING;
        client->attempt = 0;

        r = dhcp_network_bind_raw_socket(client->ifindex, &client->link,
                                         client->xid, client->mac_addr,
                                         client->mac_addr_len, client->arp_type,
                                         client->port);
        if (r < 0) {
                client_stop(client, r);
                return 0;
        }
        client->fd = r;

        return client_initialize_events(client, client_receive_message_raw);
}
