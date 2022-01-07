
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int description; } ;
typedef TYPE_1__ sd_netlink_slot ;


 int EINVAL ;
 int assert_return (TYPE_1__*,int ) ;
 int free_and_strdup (int *,char const*) ;

int sd_netlink_slot_set_description(sd_netlink_slot *slot, const char *description) {
        assert_return(slot, -EINVAL);

        return free_and_strdup(&slot->description, description);
}
