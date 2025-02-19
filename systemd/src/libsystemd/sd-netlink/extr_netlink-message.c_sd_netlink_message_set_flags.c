
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_2__* uint16_t ;
struct TYPE_8__ {TYPE_1__* hdr; } ;
typedef TYPE_2__ sd_netlink_message ;
struct TYPE_7__ {TYPE_2__* nlmsg_flags; } ;


 int EINVAL ;
 int assert_return (TYPE_2__*,int ) ;

int sd_netlink_message_set_flags(sd_netlink_message *m, uint16_t flags) {
        assert_return(m, -EINVAL);
        assert_return(flags, -EINVAL);

        m->hdr->nlmsg_flags = flags;

        return 0;
}
