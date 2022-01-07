
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int request; } ;
typedef TYPE_1__ sd_dhcp6_client ;


 int DHCP6_REQUEST_IA_PD ;
 int EINVAL ;
 int SET_FLAG (int ,int ,int) ;
 int assert_return (TYPE_1__*,int ) ;

int sd_dhcp6_client_set_prefix_delegation(sd_dhcp6_client *client, int delegation) {
        assert_return(client, -EINVAL);

        SET_FLAG(client->request, DHCP6_REQUEST_IA_PD, delegation);

        return 0;
}
