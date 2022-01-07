
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int option; } ;
typedef TYPE_1__ sd_dhcp_route ;


 int EINVAL ;
 int assert_return (TYPE_1__*,int ) ;

int sd_dhcp_route_get_option(sd_dhcp_route *route) {
        assert_return(route, -EINVAL);

        return route->option;
}
