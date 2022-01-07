
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int time_t ;
struct TYPE_4__ {int flags; int failover_start_time; int failover_timeout; int failover_delay_logged; } ;
typedef TYPE_1__ sentinelRedisInstance ;


 int LL_WARNING ;
 int SRI_FAILOVER_IN_PROGRESS ;
 int SRI_O_DOWN ;
 int ctime_r (int*,char*) ;
 int mstime () ;
 int sentinelStartFailover (TYPE_1__*) ;
 int serverLog (int ,char*,char*) ;

int sentinelStartFailoverIfNeeded(sentinelRedisInstance *master) {

    if (!(master->flags & SRI_O_DOWN)) return 0;


    if (master->flags & SRI_FAILOVER_IN_PROGRESS) return 0;


    if (mstime() - master->failover_start_time <
        master->failover_timeout*2)
    {
        if (master->failover_delay_logged != master->failover_start_time) {
            time_t clock = (master->failover_start_time +
                            master->failover_timeout*2) / 1000;
            char ctimebuf[26];

            ctime_r(&clock,ctimebuf);
            ctimebuf[24] = '\0';
            master->failover_delay_logged = master->failover_start_time;
            serverLog(LL_WARNING,
                "Next failover delay: I will not start a failover before %s",
                ctimebuf);
        }
        return 0;
    }

    sentinelStartFailover(master);
    return 1;
}
