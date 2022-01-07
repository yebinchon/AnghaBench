
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef int sd_event_source ;
struct TYPE_4__ {scalar_t__ attempt; int state; } ;
typedef TYPE_1__ sd_dhcp_client ;


 int DHCP_CLIENT_DONT_DESTROY (TYPE_1__*) ;
 int DHCP_STATE_RENEWING ;
 int client_initialize_time_events (TYPE_1__*) ;

__attribute__((used)) static int client_timeout_t1(sd_event_source *s, uint64_t usec, void *userdata) {
        sd_dhcp_client *client = userdata;
        DHCP_CLIENT_DONT_DESTROY(client);

        client->state = DHCP_STATE_RENEWING;
        client->attempt = 0;

        return client_initialize_time_events(client);
}
