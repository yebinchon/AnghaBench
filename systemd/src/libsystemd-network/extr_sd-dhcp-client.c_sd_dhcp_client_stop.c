
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int state; } ;
typedef TYPE_1__ sd_dhcp_client ;


 int DHCP_CLIENT_DONT_DESTROY (TYPE_1__*) ;
 int DHCP_STATE_STOPPED ;
 int EINVAL ;
 int SD_DHCP_CLIENT_EVENT_STOP ;
 int assert_return (TYPE_1__*,int ) ;
 int client_stop (TYPE_1__*,int ) ;

int sd_dhcp_client_stop(sd_dhcp_client *client) {
        DHCP_CLIENT_DONT_DESTROY(client);

        assert_return(client, -EINVAL);

        client_stop(client, SD_DHCP_CLIENT_EVENT_STOP);
        client->state = DHCP_STATE_STOPPED;

        return 0;
}
