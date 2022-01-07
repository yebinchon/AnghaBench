
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* link; } ;
typedef TYPE_2__ sentinelRedisInstance ;
struct TYPE_6__ {scalar_t__ last_ping_time; scalar_t__ act_ping_time; int pending_commands; int cc; } ;


 int C_OK ;
 scalar_t__ mstime () ;
 int redisAsyncCommand (int ,int ,TYPE_2__*,char*,int ) ;
 int sentinelInstanceMapCommand (TYPE_2__*,char*) ;
 int sentinelPingReplyCallback ;

int sentinelSendPing(sentinelRedisInstance *ri) {
    int retval = redisAsyncCommand(ri->link->cc,
        sentinelPingReplyCallback, ri, "%s",
        sentinelInstanceMapCommand(ri,"PING"));
    if (retval == C_OK) {
        ri->link->pending_commands++;
        ri->link->last_ping_time = mstime();



        if (ri->link->act_ping_time == 0)
            ri->link->act_ping_time = ri->link->last_ping_time;
        return 1;
    } else {
        return 0;
    }
}
