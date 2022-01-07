
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ failover_state_change_time; scalar_t__ failover_timeout; } ;
typedef TYPE_1__ sentinelRedisInstance ;


 int LL_WARNING ;
 scalar_t__ mstime () ;
 int sentinelAbortFailover (TYPE_1__*) ;
 int sentinelEvent (int ,char*,TYPE_1__*,char*) ;

void sentinelFailoverWaitPromotion(sentinelRedisInstance *ri) {


    if (mstime() - ri->failover_state_change_time > ri->failover_timeout) {
        sentinelEvent(LL_WARNING,"-failover-abort-slave-timeout",ri,"%@");
        sentinelAbortFailover(ri);
    }
}
