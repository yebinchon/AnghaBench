
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int mstime_t ;
struct TYPE_11__ {scalar_t__ numslots; } ;
struct TYPE_10__ {scalar_t__ configEpoch; TYPE_5__* slaveof; } ;
struct TYPE_9__ {int cluster_node_timeout; scalar_t__ repl_state; int cluster_slave_validity_factor; TYPE_2__* cluster; scalar_t__ repl_ping_slave_period; scalar_t__ repl_down_since; scalar_t__ unixtime; TYPE_1__* master; scalar_t__ cluster_slave_no_failover; } ;
struct TYPE_8__ {scalar_t__ failover_auth_time; int size; scalar_t__ mf_end; int todo_before_sleep; int failover_auth_count; int failover_auth_sent; int failover_auth_rank; scalar_t__ currentEpoch; scalar_t__ failover_auth_epoch; int cant_failover_reason; scalar_t__ mf_can_start; } ;
struct TYPE_7__ {scalar_t__ lastinteraction; } ;


 int CLUSTER_BROADCAST_LOCAL_SLAVES ;
 int CLUSTER_CANT_FAILOVER_DATA_AGE ;
 int CLUSTER_CANT_FAILOVER_EXPIRED ;
 int CLUSTER_CANT_FAILOVER_NONE ;
 int CLUSTER_CANT_FAILOVER_WAITING_DELAY ;
 int CLUSTER_CANT_FAILOVER_WAITING_VOTES ;
 int CLUSTER_TODO_FSYNC_CONFIG ;
 int CLUSTER_TODO_HANDLE_FAILOVER ;
 int CLUSTER_TODO_SAVE_CONFIG ;
 int CLUSTER_TODO_UPDATE_STATE ;
 int LL_WARNING ;
 scalar_t__ REPL_STATE_CONNECTED ;
 int clusterBroadcastPong (int ) ;
 int clusterDoBeforeSleep (int) ;
 int clusterFailoverReplaceYourMaster () ;
 void* clusterGetSlaveRank () ;
 int clusterLogCantFailover (int ) ;
 int clusterRequestFailoverAuth () ;
 scalar_t__ mstime () ;
 TYPE_4__* myself ;
 int nodeFailed (TYPE_5__*) ;
 scalar_t__ nodeIsMaster (TYPE_4__*) ;
 int random () ;
 int replicationGetSlaveOffset () ;
 TYPE_3__ server ;
 int serverLog (int ,char*,...) ;

void clusterHandleSlaveFailover(void) {
    mstime_t data_age;
    mstime_t auth_age = mstime() - server.cluster->failover_auth_time;
    int needed_quorum = (server.cluster->size / 2) + 1;
    int manual_failover = server.cluster->mf_end != 0 &&
                          server.cluster->mf_can_start;
    mstime_t auth_timeout, auth_retry_time;

    server.cluster->todo_before_sleep &= ~CLUSTER_TODO_HANDLE_FAILOVER;
    auth_timeout = server.cluster_node_timeout*2;
    if (auth_timeout < 2000) auth_timeout = 2000;
    auth_retry_time = auth_timeout*2;
    if (nodeIsMaster(myself) ||
        myself->slaveof == ((void*)0) ||
        (!nodeFailed(myself->slaveof) && !manual_failover) ||
        (server.cluster_slave_no_failover && !manual_failover) ||
        myself->slaveof->numslots == 0)
    {


        server.cluster->cant_failover_reason = CLUSTER_CANT_FAILOVER_NONE;
        return;
    }



    if (server.repl_state == REPL_STATE_CONNECTED) {
        data_age = (mstime_t)(server.unixtime - server.master->lastinteraction)
                   * 1000;
    } else {
        data_age = (mstime_t)(server.unixtime - server.repl_down_since) * 1000;
    }




    if (data_age > server.cluster_node_timeout)
        data_age -= server.cluster_node_timeout;





    if (server.cluster_slave_validity_factor &&
        data_age >
        (((mstime_t)server.repl_ping_slave_period * 1000) +
         (server.cluster_node_timeout * server.cluster_slave_validity_factor)))
    {
        if (!manual_failover) {
            clusterLogCantFailover(CLUSTER_CANT_FAILOVER_DATA_AGE);
            return;
        }
    }



    if (auth_age > auth_retry_time) {
        server.cluster->failover_auth_time = mstime() +
            500 +
            random() % 500;
        server.cluster->failover_auth_count = 0;
        server.cluster->failover_auth_sent = 0;
        server.cluster->failover_auth_rank = clusterGetSlaveRank();



        server.cluster->failover_auth_time +=
            server.cluster->failover_auth_rank * 1000;

        if (server.cluster->mf_end) {
            server.cluster->failover_auth_time = mstime();
            server.cluster->failover_auth_rank = 0;
     clusterDoBeforeSleep(CLUSTER_TODO_HANDLE_FAILOVER);
        }
        serverLog(LL_WARNING,
            "Start of election delayed for %lld milliseconds "
            "(rank #%d, offset %lld).",
            server.cluster->failover_auth_time - mstime(),
            server.cluster->failover_auth_rank,
            replicationGetSlaveOffset());



        clusterBroadcastPong(CLUSTER_BROADCAST_LOCAL_SLAVES);
        return;
    }






    if (server.cluster->failover_auth_sent == 0 &&
        server.cluster->mf_end == 0)
    {
        int newrank = clusterGetSlaveRank();
        if (newrank > server.cluster->failover_auth_rank) {
            long long added_delay =
                (newrank - server.cluster->failover_auth_rank) * 1000;
            server.cluster->failover_auth_time += added_delay;
            server.cluster->failover_auth_rank = newrank;
            serverLog(LL_WARNING,
                "Replica rank updated to #%d, added %lld milliseconds of delay.",
                newrank, added_delay);
        }
    }


    if (mstime() < server.cluster->failover_auth_time) {
        clusterLogCantFailover(CLUSTER_CANT_FAILOVER_WAITING_DELAY);
        return;
    }


    if (auth_age > auth_timeout) {
        clusterLogCantFailover(CLUSTER_CANT_FAILOVER_EXPIRED);
        return;
    }


    if (server.cluster->failover_auth_sent == 0) {
        server.cluster->currentEpoch++;
        server.cluster->failover_auth_epoch = server.cluster->currentEpoch;
        serverLog(LL_WARNING,"Starting a failover election for epoch %llu.",
            (unsigned long long) server.cluster->currentEpoch);
        clusterRequestFailoverAuth();
        server.cluster->failover_auth_sent = 1;
        clusterDoBeforeSleep(CLUSTER_TODO_SAVE_CONFIG|
                             CLUSTER_TODO_UPDATE_STATE|
                             CLUSTER_TODO_FSYNC_CONFIG);
        return;
    }


    if (server.cluster->failover_auth_count >= needed_quorum) {


        serverLog(LL_WARNING,
            "Failover election won: I'm the new master.");


        if (myself->configEpoch < server.cluster->failover_auth_epoch) {
            myself->configEpoch = server.cluster->failover_auth_epoch;
            serverLog(LL_WARNING,
                "configEpoch set to %llu after successful failover",
                (unsigned long long) myself->configEpoch);
        }


        clusterFailoverReplaceYourMaster();
    } else {
        clusterLogCantFailover(CLUSTER_CANT_FAILOVER_WAITING_VOTES);
    }
}
