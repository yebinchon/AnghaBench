
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int last_master_down_reply_time; int flags; scalar_t__ failover_state; TYPE_2__* link; TYPE_1__* addr; int * leader; int sentinels; } ;
typedef TYPE_3__ sentinelRedisInstance ;
typedef int port ;
typedef int mstime_t ;
typedef int dictIterator ;
typedef int dictEntry ;
struct TYPE_12__ {char* myid; int current_epoch; } ;
struct TYPE_10__ {int pending_commands; int cc; scalar_t__ disconnected; } ;
struct TYPE_9__ {int ip; int port; } ;


 int C_OK ;
 int SENTINEL_ASK_FORCED ;
 int SENTINEL_ASK_PERIOD ;
 scalar_t__ SENTINEL_FAILOVER_STATE_NONE ;
 int SRI_MASTER_DOWN ;
 int SRI_S_DOWN ;
 int * dictGetIterator (int ) ;
 TYPE_3__* dictGetVal (int *) ;
 int * dictNext (int *) ;
 int dictReleaseIterator (int *) ;
 int ll2string (char*,int,int ) ;
 int mstime () ;
 int redisAsyncCommand (int ,int ,TYPE_3__*,char*,int ,int ,char*,int ,char*) ;
 int sdsfree (int *) ;
 TYPE_6__ sentinel ;
 int sentinelInstanceMapCommand (TYPE_3__*,char*) ;
 int sentinelReceiveIsMasterDownReply ;

void sentinelAskMasterStateToOtherSentinels(sentinelRedisInstance *master, int flags) {
    dictIterator *di;
    dictEntry *de;

    di = dictGetIterator(master->sentinels);
    while((de = dictNext(di)) != ((void*)0)) {
        sentinelRedisInstance *ri = dictGetVal(de);
        mstime_t elapsed = mstime() - ri->last_master_down_reply_time;
        char port[32];
        int retval;


        if (elapsed > SENTINEL_ASK_PERIOD*5) {
            ri->flags &= ~SRI_MASTER_DOWN;
            sdsfree(ri->leader);
            ri->leader = ((void*)0);
        }






        if ((master->flags & SRI_S_DOWN) == 0) continue;
        if (ri->link->disconnected) continue;
        if (!(flags & SENTINEL_ASK_FORCED) &&
            mstime() - ri->last_master_down_reply_time < SENTINEL_ASK_PERIOD)
            continue;


        ll2string(port,sizeof(port),master->addr->port);
        retval = redisAsyncCommand(ri->link->cc,
                    sentinelReceiveIsMasterDownReply, ri,
                    "%s is-master-down-by-addr %s %s %llu %s",
                    sentinelInstanceMapCommand(ri,"SENTINEL"),
                    master->addr->ip, port,
                    sentinel.current_epoch,
                    (master->failover_state > SENTINEL_FAILOVER_STATE_NONE) ?
                    sentinel.myid : "*");
        if (retval == C_OK) ri->link->pending_commands++;
    }
    dictReleaseIterator(di);
}
