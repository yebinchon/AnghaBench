
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int acd; } ;
typedef TYPE_1__ sd_ipv4ll ;


 int EINVAL ;
 int assert_return (TYPE_1__*,int ) ;
 int sd_ipv4acd_stop (int ) ;

int sd_ipv4ll_stop(sd_ipv4ll *ll) {
        assert_return(ll, -EINVAL);

        return sd_ipv4acd_stop(ll->acd);
}
