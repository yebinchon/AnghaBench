
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int hostname; } ;
typedef TYPE_1__ sd_dhcp_client ;


 int EINVAL ;
 int assert_return (TYPE_1__*,int) ;
 scalar_t__ dns_name_is_valid (char const*) ;
 int free_and_strdup (int *,char const*) ;
 scalar_t__ hostname_is_valid (char const*,int) ;

int sd_dhcp_client_set_hostname(
                sd_dhcp_client *client,
                const char *hostname) {

        assert_return(client, -EINVAL);


        if (hostname &&
            !(hostname_is_valid(hostname, 0) && dns_name_is_valid(hostname) > 0))
                return -EINVAL;

        return free_and_strdup(&client->hostname, hostname);
}
