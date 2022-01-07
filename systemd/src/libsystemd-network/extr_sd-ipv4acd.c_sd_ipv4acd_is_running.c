
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ state; } ;
typedef TYPE_1__ sd_ipv4acd ;


 scalar_t__ IPV4ACD_STATE_INIT ;
 int assert_return (TYPE_1__*,int) ;

int sd_ipv4acd_is_running(sd_ipv4acd *acd) {
        assert_return(acd, 0);

        return acd->state != IPV4ACD_STATE_INIT;
}
