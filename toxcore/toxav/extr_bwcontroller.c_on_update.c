
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct BWCMessage {int recv; int lost; } ;
struct TYPE_5__ {scalar_t__ lru; } ;
struct TYPE_6__ {int mcb_data; int friend_number; int (* mcb ) (TYPE_2__*,int ,float,int ) ;TYPE_1__ cycle; } ;
typedef TYPE_2__ BWController ;


 scalar_t__ BWC_SEND_INTERVAL_MS ;
 int LOGGER_DEBUG (char*,...) ;
 scalar_t__ current_time_monotonic () ;
 void* ntohl (int) ;
 int stub1 (TYPE_2__*,int ,float,int ) ;

int on_update (BWController *bwc, struct BWCMessage *msg)
{
    LOGGER_DEBUG ("%p Got update from peer", bwc);


    if (current_time_monotonic() < bwc->cycle.lru + BWC_SEND_INTERVAL_MS) {
        LOGGER_DEBUG("%p Rejecting extra update", bwc);
        return -1;
    }

    bwc->cycle.lru = current_time_monotonic();

    msg->recv = ntohl(msg->recv);
    msg->lost = ntohl(msg->lost);

    LOGGER_DEBUG ("recved: %u lost: %u", msg->recv, msg->lost);

    if (msg->lost && bwc->mcb)
        bwc->mcb(bwc, bwc->friend_number,
                 ((float) (msg->lost) / (msg->recv + msg->lost)),
                 bwc->mcb_data);

    return 0;
}
