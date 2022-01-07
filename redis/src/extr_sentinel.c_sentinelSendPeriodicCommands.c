
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int flags; scalar_t__ master_link_down_time; int down_after_period; scalar_t__ info_refresh; int last_pub_time; TYPE_2__* link; TYPE_1__* master; } ;
typedef TYPE_3__ sentinelRedisInstance ;
typedef int mstime_t ;
struct TYPE_10__ {int pending_commands; int refcount; int last_pong_time; int last_ping_time; int cc; scalar_t__ disconnected; } ;
struct TYPE_9__ {int flags; } ;


 int C_OK ;
 int SENTINEL_INFO_PERIOD ;
 int SENTINEL_MAX_PENDING_COMMANDS ;
 int SENTINEL_PING_PERIOD ;
 int SENTINEL_PUBLISH_PERIOD ;
 int SRI_FAILOVER_IN_PROGRESS ;
 int SRI_O_DOWN ;
 int SRI_SENTINEL ;
 int SRI_SLAVE ;
 int mstime () ;
 int redisAsyncCommand (int ,int ,TYPE_3__*,char*,int ) ;
 int sentinelInfoReplyCallback ;
 int sentinelInstanceMapCommand (TYPE_3__*,char*) ;
 int sentinelSendHello (TYPE_3__*) ;
 int sentinelSendPing (TYPE_3__*) ;

void sentinelSendPeriodicCommands(sentinelRedisInstance *ri) {
    mstime_t now = mstime();
    mstime_t info_period, ping_period;
    int retval;



    if (ri->link->disconnected) return;







    if (ri->link->pending_commands >=
        SENTINEL_MAX_PENDING_COMMANDS * ri->link->refcount) return;
    if ((ri->flags & SRI_SLAVE) &&
        ((ri->master->flags & (SRI_O_DOWN|SRI_FAILOVER_IN_PROGRESS)) ||
         (ri->master_link_down_time != 0)))
    {
        info_period = 1000;
    } else {
        info_period = SENTINEL_INFO_PERIOD;
    }




    ping_period = ri->down_after_period;
    if (ping_period > SENTINEL_PING_PERIOD) ping_period = SENTINEL_PING_PERIOD;


    if ((ri->flags & SRI_SENTINEL) == 0 &&
        (ri->info_refresh == 0 ||
        (now - ri->info_refresh) > info_period))
    {
        retval = redisAsyncCommand(ri->link->cc,
            sentinelInfoReplyCallback, ri, "%s",
            sentinelInstanceMapCommand(ri,"INFO"));
        if (retval == C_OK) ri->link->pending_commands++;
    }


    if ((now - ri->link->last_pong_time) > ping_period &&
               (now - ri->link->last_ping_time) > ping_period/2) {
        sentinelSendPing(ri);
    }


    if ((now - ri->last_pub_time) > SENTINEL_PUBLISH_PERIOD) {
        sentinelSendHello(ri);
    }
}
