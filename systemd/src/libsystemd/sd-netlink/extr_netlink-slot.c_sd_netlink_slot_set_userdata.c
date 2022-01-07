
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* userdata; } ;
typedef TYPE_1__ sd_netlink_slot ;


 int assert_return (TYPE_1__*,int *) ;

void *sd_netlink_slot_set_userdata(sd_netlink_slot *slot, void *userdata) {
        void *ret;

        assert_return(slot, ((void*)0));

        ret = slot->userdata;
        slot->userdata = userdata;

        return ret;
}
