
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int preference; } ;
typedef TYPE_1__ sd_dhcp6_lease ;


 int EINVAL ;
 int assert_return (TYPE_1__*,int ) ;

int dhcp6_lease_set_preference(sd_dhcp6_lease *lease, uint8_t preference) {
        assert_return(lease, -EINVAL);

        lease->preference = preference;

        return 0;
}
