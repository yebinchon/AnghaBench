
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int failover_state_change_time; int failover_state; struct TYPE_7__* promoted_slave; int flags; } ;
typedef TYPE_1__ sentinelRedisInstance ;


 int LL_NOTICE ;
 int LL_WARNING ;
 int SENTINEL_FAILOVER_STATE_SEND_SLAVEOF_NOONE ;
 int SRI_PROMOTED ;
 int mstime () ;
 int sentinelAbortFailover (TYPE_1__*) ;
 int sentinelEvent (int ,char*,TYPE_1__*,char*) ;
 TYPE_1__* sentinelSelectSlave (TYPE_1__*) ;

void sentinelFailoverSelectSlave(sentinelRedisInstance *ri) {
    sentinelRedisInstance *slave = sentinelSelectSlave(ri);



    if (slave == ((void*)0)) {
        sentinelEvent(LL_WARNING,"-failover-abort-no-good-slave",ri,"%@");
        sentinelAbortFailover(ri);
    } else {
        sentinelEvent(LL_WARNING,"+selected-slave",slave,"%@");
        slave->flags |= SRI_PROMOTED;
        ri->promoted_slave = slave;
        ri->failover_state = SENTINEL_FAILOVER_STATE_SEND_SLAVEOF_NOONE;
        ri->failover_state_change_time = mstime();
        sentinelEvent(LL_NOTICE,"+failover-state-send-slaveof-noone",
            slave, "%@");
    }
}
