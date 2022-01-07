
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int flags; scalar_t__ failover_state; TYPE_1__* promoted_slave; int failover_state_change_time; } ;
typedef TYPE_2__ sentinelRedisInstance ;
struct TYPE_4__ {int flags; } ;


 scalar_t__ SENTINEL_FAILOVER_STATE_NONE ;
 scalar_t__ SENTINEL_FAILOVER_STATE_WAIT_PROMOTION ;
 int SRI_FAILOVER_IN_PROGRESS ;
 int SRI_FORCE_FAILOVER ;
 int SRI_PROMOTED ;
 int mstime () ;
 int serverAssert (int) ;

void sentinelAbortFailover(sentinelRedisInstance *ri) {
    serverAssert(ri->flags & SRI_FAILOVER_IN_PROGRESS);
    serverAssert(ri->failover_state <= SENTINEL_FAILOVER_STATE_WAIT_PROMOTION);

    ri->flags &= ~(SRI_FAILOVER_IN_PROGRESS|SRI_FORCE_FAILOVER);
    ri->failover_state = SENTINEL_FAILOVER_STATE_NONE;
    ri->failover_state_change_time = mstime();
    if (ri->promoted_slave) {
        ri->promoted_slave->flags &= ~SRI_PROMOTED;
        ri->promoted_slave = ((void*)0);
    }
}
