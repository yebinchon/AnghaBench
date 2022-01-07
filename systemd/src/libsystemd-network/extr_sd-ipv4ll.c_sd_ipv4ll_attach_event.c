
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int acd; } ;
typedef TYPE_1__ sd_ipv4ll ;
typedef int sd_event ;
typedef int int64_t ;


 int EINVAL ;
 int assert_return (TYPE_1__*,int ) ;
 int sd_ipv4acd_attach_event (int ,int *,int ) ;

int sd_ipv4ll_attach_event(sd_ipv4ll *ll, sd_event *event, int64_t priority) {
        assert_return(ll, -EINVAL);

        return sd_ipv4acd_attach_event(ll->acd, event, priority);
}
