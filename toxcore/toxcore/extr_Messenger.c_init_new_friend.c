
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef size_t uint32_t ;
typedef size_t int32_t ;
struct TYPE_8__ {scalar_t__ status; int friendcon_id; scalar_t__ message_id; scalar_t__ is_typing; int userstatus; scalar_t__ statusmessage_length; int real_pk; scalar_t__ friendrequest_lastsent; } ;
struct TYPE_7__ {int numfriends; int fr_c; TYPE_4__* friendlist; } ;
typedef TYPE_1__ Messenger ;
typedef int Friend ;


 size_t FAERR_NOMEM ;
 scalar_t__ FRIENDCONN_STATUS_CONNECTED ;
 int MESSENGER_CALLBACK_INDEX ;
 scalar_t__ NOFRIEND ;
 int USERSTATUS_NONE ;
 scalar_t__ friend_con_connected (int ,int) ;
 int friend_connection_callbacks (int ,int,int ,int *,int *,int *,TYPE_1__*,size_t) ;
 int handle_custom_lossy_packet ;
 int handle_packet ;
 int handle_status ;
 int id_copy (int ,scalar_t__ const*) ;
 int memset (TYPE_4__*,int ,int) ;
 int new_friend_connection (int ,scalar_t__ const*) ;
 scalar_t__ realloc_friendlist (TYPE_1__*,int) ;
 int send_online_packet (TYPE_1__*,size_t) ;

__attribute__((used)) static int32_t init_new_friend(Messenger *m, const uint8_t *real_pk, uint8_t status)
{

    if (realloc_friendlist(m, m->numfriends + 1) != 0)
        return FAERR_NOMEM;

    memset(&(m->friendlist[m->numfriends]), 0, sizeof(Friend));

    int friendcon_id = new_friend_connection(m->fr_c, real_pk);

    if (friendcon_id == -1)
        return FAERR_NOMEM;

    uint32_t i;

    for (i = 0; i <= m->numfriends; ++i) {
        if (m->friendlist[i].status == NOFRIEND) {
            m->friendlist[i].status = status;
            m->friendlist[i].friendcon_id = friendcon_id;
            m->friendlist[i].friendrequest_lastsent = 0;
            id_copy(m->friendlist[i].real_pk, real_pk);
            m->friendlist[i].statusmessage_length = 0;
            m->friendlist[i].userstatus = USERSTATUS_NONE;
            m->friendlist[i].is_typing = 0;
            m->friendlist[i].message_id = 0;
            friend_connection_callbacks(m->fr_c, friendcon_id, MESSENGER_CALLBACK_INDEX, &handle_status, &handle_packet,
                                        &handle_custom_lossy_packet, m, i);

            if (m->numfriends == i)
                ++m->numfriends;

            if (friend_con_connected(m->fr_c, friendcon_id) == FRIENDCONN_STATUS_CONNECTED) {
                send_online_packet(m, i);
            }

            return i;
        }
    }

    return FAERR_NOMEM;
}
