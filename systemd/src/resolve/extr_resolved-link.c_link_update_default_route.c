
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int default_route; int ifindex; } ;
typedef TYPE_1__ Link ;


 int ENODATA ;
 int assert (TYPE_1__*) ;
 int sd_network_link_get_dns_default_route (int ) ;

__attribute__((used)) static int link_update_default_route(Link *l) {
        int r;

        assert(l);

        r = sd_network_link_get_dns_default_route(l->ifindex);
        if (r == -ENODATA) {
                r = 0;
                goto clear;
        }
        if (r < 0)
                goto clear;

        l->default_route = r > 0;
        return 0;

clear:
        l->default_route = -1;
        return r;
}
