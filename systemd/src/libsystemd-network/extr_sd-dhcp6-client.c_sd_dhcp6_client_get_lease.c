
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sd_dhcp6_lease ;
struct TYPE_4__ {int * lease; } ;
typedef TYPE_1__ sd_dhcp6_client ;


 int EINVAL ;
 int ENOMSG ;
 int assert_return (TYPE_1__*,int ) ;

int sd_dhcp6_client_get_lease(sd_dhcp6_client *client, sd_dhcp6_lease **ret) {
        assert_return(client, -EINVAL);

        if (!client->lease)
                return -ENOMSG;

        if (ret)
                *ret = client->lease;

        return 0;
}
