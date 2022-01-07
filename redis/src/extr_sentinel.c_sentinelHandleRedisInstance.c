
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct TYPE_12__ {int flags; } ;
typedef TYPE_1__ sentinelRedisInstance ;
struct TYPE_11__ {scalar_t__ tilt_start_time; scalar_t__ tilt; } ;


 int LL_WARNING ;
 int SENTINEL_ASK_FORCED ;
 int SENTINEL_NO_FLAGS ;
 scalar_t__ SENTINEL_TILT_PERIOD ;
 int SRI_MASTER ;
 int SRI_SLAVE ;
 scalar_t__ mstime () ;
 TYPE_10__ sentinel ;
 int sentinelAskMasterStateToOtherSentinels (TYPE_1__*,int ) ;
 int sentinelCheckObjectivelyDown (TYPE_1__*) ;
 int sentinelCheckSubjectivelyDown (TYPE_1__*) ;
 int sentinelEvent (int ,char*,int *,char*) ;
 int sentinelFailoverStateMachine (TYPE_1__*) ;
 int sentinelReconnectInstance (TYPE_1__*) ;
 int sentinelSendPeriodicCommands (TYPE_1__*) ;
 scalar_t__ sentinelStartFailoverIfNeeded (TYPE_1__*) ;

void sentinelHandleRedisInstance(sentinelRedisInstance *ri) {


    sentinelReconnectInstance(ri);
    sentinelSendPeriodicCommands(ri);





    if (sentinel.tilt) {
        if (mstime()-sentinel.tilt_start_time < SENTINEL_TILT_PERIOD) return;
        sentinel.tilt = 0;
        sentinelEvent(LL_WARNING,"-tilt",((void*)0),"#tilt mode exited");
    }


    sentinelCheckSubjectivelyDown(ri);


    if (ri->flags & (SRI_MASTER|SRI_SLAVE)) {

    }


    if (ri->flags & SRI_MASTER) {
        sentinelCheckObjectivelyDown(ri);
        if (sentinelStartFailoverIfNeeded(ri))
            sentinelAskMasterStateToOtherSentinels(ri,SENTINEL_ASK_FORCED);
        sentinelFailoverStateMachine(ri);
        sentinelAskMasterStateToOtherSentinels(ri,SENTINEL_NO_FLAGS);
    }
}
