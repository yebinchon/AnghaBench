
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int broadcast; } ;
typedef TYPE_1__ sd_netlink_message ;


 int EINVAL ;
 int assert_return (TYPE_1__ const*,int ) ;

int sd_netlink_message_is_broadcast(const sd_netlink_message *m) {
        assert_return(m, -EINVAL);

        return m->broadcast;
}
