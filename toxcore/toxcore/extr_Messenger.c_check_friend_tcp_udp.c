
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t int32_t ;
struct TYPE_7__ {TYPE_1__* friendlist; int friend_connectionstatuschange_userdata; int (* friend_connectionstatuschange ) (TYPE_2__*,size_t,int,int ) ;} ;
struct TYPE_6__ {int last_connection_udp_tcp; } ;
typedef TYPE_2__ Messenger ;


 int CONNECTION_TCP ;
 int CONNECTION_UDP ;
 int CONNECTION_UNKNOWN ;
 int m_get_friend_connectionstatus (TYPE_2__*,size_t) ;
 int stub1 (TYPE_2__*,size_t,int,int ) ;

__attribute__((used)) static void check_friend_tcp_udp(Messenger *m, int32_t friendnumber)
{
    int last_connection_udp_tcp = m->friendlist[friendnumber].last_connection_udp_tcp;

    int ret = m_get_friend_connectionstatus(m, friendnumber);

    if (ret == -1)
        return;

    if (ret == CONNECTION_UNKNOWN) {
        if (last_connection_udp_tcp == CONNECTION_UDP) {
            return;
        } else {
            ret = CONNECTION_TCP;
        }
    }

    if (last_connection_udp_tcp != ret) {
        if (m->friend_connectionstatuschange)
            m->friend_connectionstatuschange(m, friendnumber, ret, m->friend_connectionstatuschange_userdata);
    }

    m->friendlist[friendnumber].last_connection_udp_tcp = ret;
}
