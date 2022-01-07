
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int destroy_callback; } ;
typedef TYPE_1__ sd_netlink_slot ;
typedef int sd_netlink_destroy_t ;


 int EINVAL ;
 int assert_return (TYPE_1__ const*,int ) ;

int sd_netlink_slot_get_destroy_callback(const sd_netlink_slot *slot, sd_netlink_destroy_t *callback) {
        assert_return(slot, -EINVAL);

        if (callback)
                *callback = slot->destroy_callback;

        return !!slot->destroy_callback;
}
