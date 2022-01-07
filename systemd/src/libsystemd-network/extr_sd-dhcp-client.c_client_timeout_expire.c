
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint64_t ;
typedef int sd_event_source ;
struct TYPE_7__ {scalar_t__ state; } ;
typedef TYPE_1__ sd_dhcp_client ;


 int DHCP_CLIENT_DONT_DESTROY (TYPE_1__*) ;
 scalar_t__ DHCP_STATE_STOPPED ;
 int SD_DHCP_CLIENT_EVENT_EXPIRED ;
 int client_initialize (TYPE_1__*) ;
 int client_notify (TYPE_1__*,int ) ;
 int client_start (TYPE_1__*) ;
 int log_dhcp_client (TYPE_1__*,char*) ;

__attribute__((used)) static int client_timeout_expire(sd_event_source *s, uint64_t usec, void *userdata) {
        sd_dhcp_client *client = userdata;
        DHCP_CLIENT_DONT_DESTROY(client);

        log_dhcp_client(client, "EXPIRED");

        client_notify(client, SD_DHCP_CLIENT_EVENT_EXPIRED);


        if (client->state != DHCP_STATE_STOPPED) {
                client_initialize(client);
                client_start(client);
        }

        return 0;
}
