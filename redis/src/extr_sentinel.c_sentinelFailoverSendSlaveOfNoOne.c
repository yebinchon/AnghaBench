
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ failover_state_change_time; scalar_t__ failover_timeout; int failover_state; struct TYPE_8__* promoted_slave; TYPE_1__* link; } ;
typedef TYPE_2__ sentinelRedisInstance ;
struct TYPE_7__ {scalar_t__ disconnected; } ;


 int C_OK ;
 int LL_NOTICE ;
 int LL_WARNING ;
 int SENTINEL_FAILOVER_STATE_WAIT_PROMOTION ;
 scalar_t__ mstime () ;
 int sentinelAbortFailover (TYPE_2__*) ;
 int sentinelEvent (int ,char*,TYPE_2__*,char*) ;
 int sentinelSendSlaveOf (TYPE_2__*,int *,int ) ;

void sentinelFailoverSendSlaveOfNoOne(sentinelRedisInstance *ri) {
    int retval;




    if (ri->promoted_slave->link->disconnected) {
        if (mstime() - ri->failover_state_change_time > ri->failover_timeout) {
            sentinelEvent(LL_WARNING,"-failover-abort-slave-timeout",ri,"%@");
            sentinelAbortFailover(ri);
        }
        return;
    }





    retval = sentinelSendSlaveOf(ri->promoted_slave,((void*)0),0);
    if (retval != C_OK) return;
    sentinelEvent(LL_NOTICE, "+failover-state-wait-promotion",
        ri->promoted_slave,"%@");
    ri->failover_state = SENTINEL_FAILOVER_STATE_WAIT_PROMOTION;
    ri->failover_state_change_time = mstime();
}
