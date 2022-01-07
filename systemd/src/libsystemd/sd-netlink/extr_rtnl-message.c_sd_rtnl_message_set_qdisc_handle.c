
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct tcmsg {int tcm_handle; } ;
struct TYPE_4__ {TYPE_3__* hdr; } ;
typedef TYPE_1__ sd_netlink_message ;
struct TYPE_5__ {int nlmsg_type; } ;


 int EINVAL ;
 struct tcmsg* NLMSG_DATA (TYPE_3__*) ;
 int assert_return (int ,int ) ;
 int rtnl_message_type_is_qdisc (int ) ;

int sd_rtnl_message_set_qdisc_handle(sd_netlink_message *m, uint32_t handle) {
        struct tcmsg *tcm;

        assert_return(rtnl_message_type_is_qdisc(m->hdr->nlmsg_type), -EINVAL);

        tcm = NLMSG_DATA(m->hdr);
        tcm->tcm_handle = handle;

        return 0;
}
