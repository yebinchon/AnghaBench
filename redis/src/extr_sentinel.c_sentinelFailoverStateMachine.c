
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int flags; int failover_state; } ;
typedef TYPE_1__ sentinelRedisInstance ;







 int SRI_FAILOVER_IN_PROGRESS ;
 int SRI_MASTER ;
 int sentinelFailoverReconfNextSlave (TYPE_1__*) ;
 int sentinelFailoverSelectSlave (TYPE_1__*) ;
 int sentinelFailoverSendSlaveOfNoOne (TYPE_1__*) ;
 int sentinelFailoverWaitPromotion (TYPE_1__*) ;
 int sentinelFailoverWaitStart (TYPE_1__*) ;
 int serverAssert (int) ;

void sentinelFailoverStateMachine(sentinelRedisInstance *ri) {
    serverAssert(ri->flags & SRI_MASTER);

    if (!(ri->flags & SRI_FAILOVER_IN_PROGRESS)) return;

    switch(ri->failover_state) {
        case 128:
            sentinelFailoverWaitStart(ri);
            break;
        case 131:
            sentinelFailoverSelectSlave(ri);
            break;
        case 130:
            sentinelFailoverSendSlaveOfNoOne(ri);
            break;
        case 129:
            sentinelFailoverWaitPromotion(ri);
            break;
        case 132:
            sentinelFailoverReconfNextSlave(ri);
            break;
    }
}
