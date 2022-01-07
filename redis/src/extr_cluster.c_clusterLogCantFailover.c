
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ time_t ;
typedef scalar_t__ mstime_t ;
struct TYPE_8__ {TYPE_3__* slaveof; } ;
struct TYPE_7__ {scalar_t__ fail_time; } ;
struct TYPE_6__ {scalar_t__ cluster_node_timeout; TYPE_1__* cluster; } ;
struct TYPE_5__ {int cant_failover_reason; } ;




 scalar_t__ CLUSTER_CANT_FAILOVER_RELOG_PERIOD ;


 int LL_WARNING ;
 scalar_t__ mstime () ;
 TYPE_4__* myself ;
 scalar_t__ nodeFailed (TYPE_3__*) ;
 TYPE_2__ server ;
 int serverLog (int ,char*,char*) ;
 scalar_t__ time (int *) ;

void clusterLogCantFailover(int reason) {
    char *msg;
    static time_t lastlog_time = 0;
    mstime_t nolog_fail_time = server.cluster_node_timeout + 5000;


    if (reason == server.cluster->cant_failover_reason &&
        time(((void*)0))-lastlog_time < CLUSTER_CANT_FAILOVER_RELOG_PERIOD)
        return;

    server.cluster->cant_failover_reason = reason;




    if (myself->slaveof &&
        nodeFailed(myself->slaveof) &&
        (mstime() - myself->slaveof->fail_time) < nolog_fail_time) return;

    switch(reason) {
    case 131:
        msg = "Disconnected from master for longer than allowed. "
              "Please check the 'cluster-replica-validity-factor' configuration "
              "option.";
        break;
    case 129:
        msg = "Waiting the delay before I can start a new failover.";
        break;
    case 130:
        msg = "Failover attempt expired.";
        break;
    case 128:
        msg = "Waiting for votes, but majority still not reached.";
        break;
    default:
        msg = "Unknown reason code.";
        break;
    }
    lastlog_time = time(((void*)0));
    serverLog(LL_WARNING,"Currently unable to failover: %s", msg);
}
