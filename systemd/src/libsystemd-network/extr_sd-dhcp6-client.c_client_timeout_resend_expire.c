
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_8__ {int state; struct TYPE_8__* event; } ;
typedef TYPE_1__ sd_event_source ;
typedef TYPE_1__ sd_dhcp6_client ;
typedef enum DHCP6State { ____Placeholder_DHCP6State } DHCP6State ;


 int DHCP6_CLIENT_DONT_DESTROY (TYPE_1__*) ;
 int DHCP6_STATE_REBIND ;
 int DHCP6_STATE_SOLICITATION ;
 int SD_DHCP6_CLIENT_EVENT_RESEND_EXPIRE ;
 int assert (TYPE_1__*) ;
 int client_start (TYPE_1__*,int ) ;
 int client_stop (TYPE_1__*,int ) ;

__attribute__((used)) static int client_timeout_resend_expire(sd_event_source *s, uint64_t usec, void *userdata) {
        sd_dhcp6_client *client = userdata;
        DHCP6_CLIENT_DONT_DESTROY(client);
        enum DHCP6State state;

        assert(s);
        assert(client);
        assert(client->event);

        state = client->state;

        client_stop(client, SD_DHCP6_CLIENT_EVENT_RESEND_EXPIRE);



        if (state == DHCP6_STATE_REBIND)
                client_start(client, DHCP6_STATE_SOLICITATION);

        return 0;
}
