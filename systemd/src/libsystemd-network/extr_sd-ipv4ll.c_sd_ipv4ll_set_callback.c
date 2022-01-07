
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sd_ipv4ll_callback_t ;
struct TYPE_4__ {void* userdata; int callback; } ;
typedef TYPE_1__ sd_ipv4ll ;


 int EINVAL ;
 int assert_return (TYPE_1__*,int ) ;

int sd_ipv4ll_set_callback(sd_ipv4ll *ll, sd_ipv4ll_callback_t cb, void *userdata) {
        assert_return(ll, -EINVAL);

        ll->callback = cb;
        ll->userdata = userdata;

        return 0;
}
