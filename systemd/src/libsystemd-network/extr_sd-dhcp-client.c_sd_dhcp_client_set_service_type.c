
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ip_service_type; } ;
typedef TYPE_1__ sd_dhcp_client ;


 int EINVAL ;
 int assert_return (TYPE_1__*,int ) ;

int sd_dhcp_client_set_service_type(sd_dhcp_client *client, int type) {
        assert_return(client, -EINVAL);

        client->ip_service_type = type;

        return 0;
}
