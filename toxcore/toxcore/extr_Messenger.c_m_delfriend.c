
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32_t ;
typedef size_t int32_t ;
struct TYPE_10__ {scalar_t__ status; int friendcon_id; int real_pk; } ;
struct TYPE_9__ {int numfriends; TYPE_5__* friendlist; int fr_c; int fr; int friend_connectionstatuschange_internal_userdata; int (* friend_connectionstatuschange_internal ) (TYPE_1__*,size_t,int ,int ) ;} ;
typedef TYPE_1__ Messenger ;
typedef int Friend ;


 int FAERR_NOMEM ;
 scalar_t__ FRIENDCONN_STATUS_CONNECTED ;
 int MESSENGER_CALLBACK_INDEX ;
 scalar_t__ NOFRIEND ;
 int clear_receipts (TYPE_1__*,size_t) ;
 scalar_t__ friend_con_connected (int ,int ) ;
 int friend_connection_callbacks (int ,int ,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ friend_not_valid (TYPE_1__*,size_t) ;
 int kill_friend_connection (int ,int ) ;
 int memset (TYPE_5__*,int ,int) ;
 scalar_t__ realloc_friendlist (TYPE_1__*,int) ;
 int remove_request_received (int *,int ) ;
 int send_offline_packet (TYPE_1__*,int ) ;
 int stub1 (TYPE_1__*,size_t,int ,int ) ;

int m_delfriend(Messenger *m, int32_t friendnumber)
{
    if (friend_not_valid(m, friendnumber))
        return -1;

    if (m->friend_connectionstatuschange_internal)
        m->friend_connectionstatuschange_internal(m, friendnumber, 0, m->friend_connectionstatuschange_internal_userdata);

    clear_receipts(m, friendnumber);
    remove_request_received(&(m->fr), m->friendlist[friendnumber].real_pk);
    friend_connection_callbacks(m->fr_c, m->friendlist[friendnumber].friendcon_id, MESSENGER_CALLBACK_INDEX, 0, 0, 0, 0, 0);

    if (friend_con_connected(m->fr_c, m->friendlist[friendnumber].friendcon_id) == FRIENDCONN_STATUS_CONNECTED) {
        send_offline_packet(m, m->friendlist[friendnumber].friendcon_id);
    }

    kill_friend_connection(m->fr_c, m->friendlist[friendnumber].friendcon_id);
    memset(&(m->friendlist[friendnumber]), 0, sizeof(Friend));
    uint32_t i;

    for (i = m->numfriends; i != 0; --i) {
        if (m->friendlist[i - 1].status != NOFRIEND)
            break;
    }

    m->numfriends = i;

    if (realloc_friendlist(m, m->numfriends) != 0)
        return FAERR_NOMEM;

    return 0;
}
