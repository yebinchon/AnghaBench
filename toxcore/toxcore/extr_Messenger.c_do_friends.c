
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef void* uint64_t ;
typedef size_t uint32_t ;
struct TYPE_14__ {size_t numfriends; TYPE_1__* friendlist; int userstatus; int statusmessage_length; int statusmessage; int name_length; int name; int fr_c; } ;
struct TYPE_13__ {scalar_t__ status; int name_sent; int statusmessage_sent; int userstatus_sent; int user_istyping_sent; void* last_seen_time; int user_istyping; void* friendrequest_lastsent; int info_size; int info; int friendrequest_nospam; int friendcon_id; } ;
typedef TYPE_2__ Messenger ;


 scalar_t__ FRIEND_ADDED ;
 scalar_t__ FRIEND_CONFIRMED ;
 scalar_t__ FRIEND_ONLINE ;
 scalar_t__ FRIEND_REQUESTED ;
 int check_friend_request_timed_out (TYPE_2__*,size_t,void*) ;
 int check_friend_tcp_udp (TYPE_2__*,size_t) ;
 int do_receipts (TYPE_2__*,size_t) ;
 int do_reqchunk_filecb (TYPE_2__*,size_t) ;
 scalar_t__ m_sendname (TYPE_2__*,size_t,int ,int ) ;
 int send_friend_request_packet (int ,int ,int ,int ,int ) ;
 scalar_t__ send_statusmessage (TYPE_2__*,size_t,int ,int ) ;
 scalar_t__ send_user_istyping (TYPE_2__*,size_t,int ) ;
 scalar_t__ send_userstatus (TYPE_2__*,size_t,int ) ;
 int set_friend_status (TYPE_2__*,size_t,scalar_t__) ;
 scalar_t__ time (int *) ;
 void* unix_time () ;

void do_friends(Messenger *m)
{
    uint32_t i;
    uint64_t temp_time = unix_time();

    for (i = 0; i < m->numfriends; ++i) {
        if (m->friendlist[i].status == FRIEND_ADDED) {
            int fr = send_friend_request_packet(m->fr_c, m->friendlist[i].friendcon_id, m->friendlist[i].friendrequest_nospam,
                                                m->friendlist[i].info,
                                                m->friendlist[i].info_size);

            if (fr >= 0) {
                set_friend_status(m, i, FRIEND_REQUESTED);
                m->friendlist[i].friendrequest_lastsent = temp_time;
            }
        }

        if (m->friendlist[i].status == FRIEND_REQUESTED
                || m->friendlist[i].status == FRIEND_CONFIRMED) {
            if (m->friendlist[i].status == FRIEND_REQUESTED) {



                check_friend_request_timed_out(m, i, temp_time);
            }
        }

        if (m->friendlist[i].status == FRIEND_ONLINE) {
            if (m->friendlist[i].name_sent == 0) {
                if (m_sendname(m, i, m->name, m->name_length))
                    m->friendlist[i].name_sent = 1;
            }

            if (m->friendlist[i].statusmessage_sent == 0) {
                if (send_statusmessage(m, i, m->statusmessage, m->statusmessage_length))
                    m->friendlist[i].statusmessage_sent = 1;
            }

            if (m->friendlist[i].userstatus_sent == 0) {
                if (send_userstatus(m, i, m->userstatus))
                    m->friendlist[i].userstatus_sent = 1;
            }

            if (m->friendlist[i].user_istyping_sent == 0) {
                if (send_user_istyping(m, i, m->friendlist[i].user_istyping))
                    m->friendlist[i].user_istyping_sent = 1;
            }

            check_friend_tcp_udp(m, i);
            do_receipts(m, i);
            do_reqchunk_filecb(m, i);

            m->friendlist[i].last_seen_time = (uint64_t) time(((void*)0));
        }
    }
}
