
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int port; } ;
typedef TYPE_1__ sd_dhcp_client ;


 int EINVAL ;
 int assert_return (TYPE_1__*,int ) ;

int sd_dhcp_client_set_client_port(
                sd_dhcp_client *client,
                uint16_t port) {

        assert_return(client, -EINVAL);

        client->port = port;

        return 0;
}
