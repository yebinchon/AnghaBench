
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_6__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int flags; int failover_timeout; int failover_start_time; int failover_state_change_time; int failover_state; int failover_epoch; } ;
typedef TYPE_1__ sentinelRedisInstance ;
struct TYPE_8__ {int simfailure_flags; int myid; } ;


 int LL_WARNING ;
 int SENTINEL_ELECTION_TIMEOUT ;
 int SENTINEL_FAILOVER_STATE_SELECT_SLAVE ;
 int SENTINEL_SIMFAILURE_CRASH_AFTER_ELECTION ;
 int SRI_FORCE_FAILOVER ;
 int mstime () ;
 int sdsfree (char*) ;
 TYPE_6__ sentinel ;
 int sentinelAbortFailover (TYPE_1__*) ;
 int sentinelEvent (int ,char*,TYPE_1__*,char*) ;
 char* sentinelGetLeader (TYPE_1__*,int ) ;
 int sentinelSimFailureCrash () ;
 scalar_t__ strcasecmp (char*,int ) ;

void sentinelFailoverWaitStart(sentinelRedisInstance *ri) {
    char *leader;
    int isleader;


    leader = sentinelGetLeader(ri, ri->failover_epoch);
    isleader = leader && strcasecmp(leader,sentinel.myid) == 0;
    sdsfree(leader);



    if (!isleader && !(ri->flags & SRI_FORCE_FAILOVER)) {
        int election_timeout = SENTINEL_ELECTION_TIMEOUT;



        if (election_timeout > ri->failover_timeout)
            election_timeout = ri->failover_timeout;

        if (mstime() - ri->failover_start_time > election_timeout) {
            sentinelEvent(LL_WARNING,"-failover-abort-not-elected",ri,"%@");
            sentinelAbortFailover(ri);
        }
        return;
    }
    sentinelEvent(LL_WARNING,"+elected-leader",ri,"%@");
    if (sentinel.simfailure_flags & SENTINEL_SIMFAILURE_CRASH_AFTER_ELECTION)
        sentinelSimFailureCrash();
    ri->failover_state = SENTINEL_FAILOVER_STATE_SELECT_SLAVE;
    ri->failover_state_change_time = mstime();
    sentinelEvent(LL_WARNING,"+failover-state-select-slave",ri,"%@");
}
