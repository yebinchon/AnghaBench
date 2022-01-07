
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_4__ {scalar_t__ max_lease_time; } ;
typedef TYPE_1__ sd_dhcp_server ;


 int EINVAL ;
 int assert_return (TYPE_1__*,int ) ;

int sd_dhcp_server_set_max_lease_time(sd_dhcp_server *server, uint32_t t) {
        assert_return(server, -EINVAL);

        if (t == server->max_lease_time)
                return 0;

        server->max_lease_time = t;
        return 1;
}
