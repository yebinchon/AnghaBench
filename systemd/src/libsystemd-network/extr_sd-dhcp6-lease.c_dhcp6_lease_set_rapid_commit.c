
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rapid_commit; } ;
typedef TYPE_1__ sd_dhcp6_lease ;


 int EINVAL ;
 int assert_return (TYPE_1__*,int ) ;

int dhcp6_lease_set_rapid_commit(sd_dhcp6_lease *lease) {
        assert_return(lease, -EINVAL);

        lease->rapid_commit = 1;

        return 0;
}
