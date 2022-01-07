
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ether_addr {int dummy; } ;


 int send_ra_function (int ) ;

int icmp6_send_router_solicitation(int s, const struct ether_addr *ether_addr) {
        if (!send_ra_function)
                return 0;

        return send_ra_function(0);
}
