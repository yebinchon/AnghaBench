
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct in_addr {int s_addr; } ;
struct TYPE_5__ {int last_addr; int state; } ;
typedef TYPE_1__ sd_dhcp_client ;


 int DHCP_STATE_INIT ;
 int DHCP_STATE_STOPPED ;
 int EBUSY ;
 int EINVAL ;
 int INADDR_ANY ;
 TYPE_1__* IN_SET (int ,int ,int ) ;
 int assert_return (TYPE_1__*,int ) ;

int sd_dhcp_client_set_request_address(
                sd_dhcp_client *client,
                const struct in_addr *last_addr) {

        assert_return(client, -EINVAL);
        assert_return(IN_SET(client->state, DHCP_STATE_INIT, DHCP_STATE_STOPPED), -EBUSY);

        if (last_addr)
                client->last_addr = last_addr->s_addr;
        else
                client->last_addr = INADDR_ANY;

        return 0;
}
