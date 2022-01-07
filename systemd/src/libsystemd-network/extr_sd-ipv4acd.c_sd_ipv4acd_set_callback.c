
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sd_ipv4acd_callback_t ;
struct TYPE_4__ {void* userdata; int callback; } ;
typedef TYPE_1__ sd_ipv4acd ;


 int EINVAL ;
 int assert_return (TYPE_1__*,int ) ;

int sd_ipv4acd_set_callback(sd_ipv4acd *acd, sd_ipv4acd_callback_t cb, void *userdata) {
        assert_return(acd, -EINVAL);

        acd->callback = cb;
        acd->userdata = userdata;

        return 0;
}
