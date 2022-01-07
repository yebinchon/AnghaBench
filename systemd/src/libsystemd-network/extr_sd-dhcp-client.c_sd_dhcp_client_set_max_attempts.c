
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {int max_attempts; } ;
typedef TYPE_1__ sd_dhcp_client ;


 int EINVAL ;
 int assert_return (TYPE_1__*,int ) ;

int sd_dhcp_client_set_max_attempts(sd_dhcp_client *client, uint64_t max_attempts) {
        assert_return(client, -EINVAL);

        client->max_attempts = max_attempts;

        return 0;
}
