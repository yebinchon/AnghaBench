
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; void* failover_state_change_time; void* failover_start_time; scalar_t__ failover_epoch; int failover_state; } ;
typedef TYPE_1__ sentinelRedisInstance ;
struct TYPE_6__ {scalar_t__ current_epoch; } ;


 int LL_WARNING ;
 int SENTINEL_FAILOVER_STATE_WAIT_START ;
 int SENTINEL_MAX_DESYNC ;
 int SRI_FAILOVER_IN_PROGRESS ;
 int SRI_MASTER ;
 void* mstime () ;
 int rand () ;
 TYPE_4__ sentinel ;
 int sentinelEvent (int ,char*,TYPE_1__*,char*,...) ;
 int serverAssert (int) ;

void sentinelStartFailover(sentinelRedisInstance *master) {
    serverAssert(master->flags & SRI_MASTER);

    master->failover_state = SENTINEL_FAILOVER_STATE_WAIT_START;
    master->flags |= SRI_FAILOVER_IN_PROGRESS;
    master->failover_epoch = ++sentinel.current_epoch;
    sentinelEvent(LL_WARNING,"+new-epoch",master,"%llu",
        (unsigned long long) sentinel.current_epoch);
    sentinelEvent(LL_WARNING,"+try-failover",master,"%@");
    master->failover_start_time = mstime()+rand()%SENTINEL_MAX_DESYNC;
    master->failover_state_change_time = mstime();
}
