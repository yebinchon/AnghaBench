
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int destroy_callback; } ;
typedef TYPE_1__ sd_netlink_slot ;
typedef int sd_netlink_destroy_t ;


 int EINVAL ;
 int assert_return (TYPE_1__*,int ) ;

int sd_netlink_slot_set_destroy_callback(sd_netlink_slot *slot, sd_netlink_destroy_t callback) {
        assert_return(slot, -EINVAL);

        slot->destroy_callback = callback;
        return 0;
}
