
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int request; } ;
typedef TYPE_1__ sd_dhcp6_client ;


 int DHCP6_REQUEST_IA_NA ;
 int EINVAL ;
 int SET_FLAG (int ,int ,int) ;
 int assert_return (TYPE_1__*,int ) ;

int sd_dhcp6_client_set_address_request(sd_dhcp6_client *client, int request) {
        assert_return(client, -EINVAL);

        SET_FLAG(client->request, DHCP6_REQUEST_IA_NA, request);

        return 0;
}
