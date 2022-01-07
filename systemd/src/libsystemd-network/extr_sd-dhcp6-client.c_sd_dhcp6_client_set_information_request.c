
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int information_request; int state; } ;
typedef TYPE_1__ sd_dhcp6_client ;


 int DHCP6_STATE_STOPPED ;
 int EBUSY ;
 int EINVAL ;
 TYPE_1__* IN_SET (int ,int ) ;
 int assert_return (TYPE_1__*,int ) ;

int sd_dhcp6_client_set_information_request(sd_dhcp6_client *client, int enabled) {
        assert_return(client, -EINVAL);
        assert_return(IN_SET(client->state, DHCP6_STATE_STOPPED), -EBUSY);

        client->information_request = enabled;

        return 0;
}
