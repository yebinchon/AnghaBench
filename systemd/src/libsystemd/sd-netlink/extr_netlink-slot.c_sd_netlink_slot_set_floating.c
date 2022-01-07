
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int floating; int netlink; } ;
typedef TYPE_1__ sd_netlink_slot ;


 int EINVAL ;
 int ESTALE ;
 int assert_return (TYPE_1__*,int ) ;
 int sd_netlink_ref (int ) ;
 int sd_netlink_slot_ref (TYPE_1__*) ;
 int sd_netlink_slot_unref (TYPE_1__*) ;
 int sd_netlink_unref (int ) ;

int sd_netlink_slot_set_floating(sd_netlink_slot *slot, int b) {
        assert_return(slot, -EINVAL);

        if (slot->floating == !!b)
                return 0;

        if (!slot->netlink)
                return -ESTALE;

        slot->floating = b;

        if (b) {
                sd_netlink_slot_ref(slot);
                sd_netlink_unref(slot->netlink);
        } else {
                sd_netlink_ref(slot->netlink);
                sd_netlink_slot_unref(slot);
        }

        return 1;
}
