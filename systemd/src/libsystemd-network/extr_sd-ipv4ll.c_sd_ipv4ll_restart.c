
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ address; } ;
typedef TYPE_1__ sd_ipv4ll ;


 int ipv4ll_start_internal (TYPE_1__*,int) ;

int sd_ipv4ll_restart(sd_ipv4ll *ll) {
        ll->address = 0;

        return ipv4ll_start_internal(ll, 0);
}
