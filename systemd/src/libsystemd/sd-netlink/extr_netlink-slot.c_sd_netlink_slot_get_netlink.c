
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * netlink; } ;
typedef TYPE_1__ sd_netlink_slot ;
typedef int sd_netlink ;


 int assert_return (TYPE_1__*,int *) ;

sd_netlink *sd_netlink_slot_get_netlink(sd_netlink_slot *slot) {
        assert_return(slot, ((void*)0));

        return slot->netlink;
}
