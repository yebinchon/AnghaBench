
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int ifindex; int state; int anonymize; scalar_t__ last_addr; } ;
typedef TYPE_1__ sd_dhcp_client ;


 int DHCP_STATE_INIT_REBOOT ;
 int EINVAL ;
 int assert_return (TYPE_1__*,int ) ;
 int client_initialize (TYPE_1__*) ;
 int client_start (TYPE_1__*) ;
 int log_dhcp_client (TYPE_1__*,char*,int ) ;

int sd_dhcp_client_start(sd_dhcp_client *client) {
        int r;

        assert_return(client, -EINVAL);

        r = client_initialize(client);
        if (r < 0)
                return r;
        if (client->last_addr && !client->anonymize)
                client->state = DHCP_STATE_INIT_REBOOT;

        r = client_start(client);
        if (r >= 0)
                log_dhcp_client(client, "STARTED on ifindex %i", client->ifindex);

        return r;
}
