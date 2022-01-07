
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int floating; } ;
typedef TYPE_1__ sd_netlink_slot ;


 int EINVAL ;
 int assert_return (TYPE_1__ const*,int ) ;

int sd_netlink_slot_get_floating(const sd_netlink_slot *slot) {
        assert_return(slot, -EINVAL);

        return slot->floating;
}
