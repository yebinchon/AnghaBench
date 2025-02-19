
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct BWCMessage {void* recv; void* lost; } ;
typedef int p_msg ;
struct TYPE_5__ {scalar_t__ lfu; int lost; int recv; scalar_t__ lsu; } ;
struct TYPE_6__ {TYPE_1__ cycle; int friend_number; int m; } ;
typedef TYPE_2__ BWController ;


 int BWC_PACKET_ID ;
 scalar_t__ BWC_REFRESH_INTERVAL_MS ;
 scalar_t__ BWC_SEND_INTERVAL_MS ;
 int LOGGER_DEBUG (char*,TYPE_2__*,int,int) ;
 int LOGGER_WARNING (char*,int,int ) ;
 scalar_t__ current_time_monotonic () ;
 int errno ;
 void* htonl (int) ;
 int send_custom_lossy_packet (int ,int ,int *,int) ;
 int strerror (int ) ;

void send_update(BWController *bwc)
{
    if (current_time_monotonic() - bwc->cycle.lfu > BWC_REFRESH_INTERVAL_MS) {

        bwc->cycle.lost /= 10;
        bwc->cycle.recv /= 10;
        bwc->cycle.lfu = current_time_monotonic();
    } else if (current_time_monotonic() - bwc->cycle.lsu > BWC_SEND_INTERVAL_MS) {

        if (bwc->cycle.lost) {
            LOGGER_DEBUG ("%p Sent update rcv: %u lost: %u",
                          bwc, bwc->cycle.recv, bwc->cycle.lost);

            uint8_t p_msg[sizeof(struct BWCMessage) + 1];
            struct BWCMessage *b_msg = (struct BWCMessage *)(p_msg + 1);

            p_msg[0] = BWC_PACKET_ID;
            b_msg->lost = htonl(bwc->cycle.lost);
            b_msg->recv = htonl(bwc->cycle.recv);

            if (-1 == send_custom_lossy_packet(bwc->m, bwc->friend_number, p_msg, sizeof(p_msg)))
                LOGGER_WARNING("BWC send failed (len: %d)! std error: %s", sizeof(p_msg), strerror(errno));
        }

        bwc->cycle.lsu = current_time_monotonic();
    }
}
