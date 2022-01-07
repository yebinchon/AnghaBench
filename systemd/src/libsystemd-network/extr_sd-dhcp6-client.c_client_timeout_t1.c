
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_7__ {int timeout_t1; struct TYPE_7__* lease; } ;
typedef TYPE_1__ sd_event_source ;
typedef TYPE_1__ sd_dhcp6_client ;


 int DHCP6_STATE_RENEW ;
 int assert (TYPE_1__*) ;
 int client_start (TYPE_1__*,int ) ;
 int event_source_disable (int ) ;
 int log_dhcp6_client (TYPE_1__*,char*) ;

__attribute__((used)) static int client_timeout_t1(sd_event_source *s, uint64_t usec, void *userdata) {
        sd_dhcp6_client *client = userdata;

        assert(s);
        assert(client);
        assert(client->lease);

        (void) event_source_disable(client->timeout_t1);

        log_dhcp6_client(client, "Timeout T1");

        client_start(client, DHCP6_STATE_RENEW);

        return 0;
}
