
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int request_broadcast; } ;
typedef TYPE_1__ sd_dhcp_client ;


 int EINVAL ;
 int assert_return (TYPE_1__*,int ) ;

int sd_dhcp_client_set_request_broadcast(sd_dhcp_client *client, int broadcast) {
        assert_return(client, -EINVAL);

        client->request_broadcast = !!broadcast;

        return 0;
}
