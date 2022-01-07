
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_15__ {int voted_time; int name; struct TYPE_15__* slaveof; } ;
typedef TYPE_3__ clusterNode ;
struct TYPE_16__ {unsigned char* myslots; int* mflags; int configEpoch; int currentEpoch; } ;
typedef TYPE_4__ clusterMsg ;
struct TYPE_18__ {scalar_t__ numslots; } ;
struct TYPE_17__ {int cluster_node_timeout; TYPE_2__* cluster; } ;
struct TYPE_14__ {scalar_t__ currentEpoch; scalar_t__ lastVoteEpoch; TYPE_1__** slots; } ;
struct TYPE_13__ {scalar_t__ configEpoch; } ;


 int CLUSTERMSG_FLAG0_FORCEACK ;
 int CLUSTER_SLOTS ;
 int CLUSTER_TODO_FSYNC_CONFIG ;
 int CLUSTER_TODO_SAVE_CONFIG ;
 int LL_WARNING ;
 scalar_t__ bitmapTestBit (unsigned char*,int) ;
 int clusterDoBeforeSleep (int) ;
 int clusterSendFailoverAuth (TYPE_3__*) ;
 int mstime () ;
 TYPE_6__* myself ;
 int nodeFailed (TYPE_3__*) ;
 scalar_t__ nodeIsMaster (TYPE_3__*) ;
 scalar_t__ nodeIsSlave (TYPE_6__*) ;
 scalar_t__ ntohu64 (int ) ;
 TYPE_5__ server ;
 int serverLog (int ,char*,int ,...) ;

void clusterSendFailoverAuthIfNeeded(clusterNode *node, clusterMsg *request) {
    clusterNode *master = node->slaveof;
    uint64_t requestCurrentEpoch = ntohu64(request->currentEpoch);
    uint64_t requestConfigEpoch = ntohu64(request->configEpoch);
    unsigned char *claimed_slots = request->myslots;
    int force_ack = request->mflags[0] & CLUSTERMSG_FLAG0_FORCEACK;
    int j;





    if (nodeIsSlave(myself) || myself->numslots == 0) return;





    if (requestCurrentEpoch < server.cluster->currentEpoch) {
        serverLog(LL_WARNING,
            "Failover auth denied to %.40s: reqEpoch (%llu) < curEpoch(%llu)",
            node->name,
            (unsigned long long) requestCurrentEpoch,
            (unsigned long long) server.cluster->currentEpoch);
        return;
    }


    if (server.cluster->lastVoteEpoch == server.cluster->currentEpoch) {
        serverLog(LL_WARNING,
                "Failover auth denied to %.40s: already voted for epoch %llu",
                node->name,
                (unsigned long long) server.cluster->currentEpoch);
        return;
    }




    if (nodeIsMaster(node) || master == ((void*)0) ||
        (!nodeFailed(master) && !force_ack))
    {
        if (nodeIsMaster(node)) {
            serverLog(LL_WARNING,
                    "Failover auth denied to %.40s: it is a master node",
                    node->name);
        } else if (master == ((void*)0)) {
            serverLog(LL_WARNING,
                    "Failover auth denied to %.40s: I don't know its master",
                    node->name);
        } else if (!nodeFailed(master)) {
            serverLog(LL_WARNING,
                    "Failover auth denied to %.40s: its master is up",
                    node->name);
        }
        return;
    }




    if (mstime() - node->slaveof->voted_time < server.cluster_node_timeout * 2)
    {
        serverLog(LL_WARNING,
                "Failover auth denied to %.40s: "
                "can't vote about this master before %lld milliseconds",
                node->name,
                (long long) ((server.cluster_node_timeout*2)-
                             (mstime() - node->slaveof->voted_time)));
        return;
    }




    for (j = 0; j < CLUSTER_SLOTS; j++) {
        if (bitmapTestBit(claimed_slots, j) == 0) continue;
        if (server.cluster->slots[j] == ((void*)0) ||
            server.cluster->slots[j]->configEpoch <= requestConfigEpoch)
        {
            continue;
        }



        serverLog(LL_WARNING,
                "Failover auth denied to %.40s: "
                "slot %d epoch (%llu) > reqEpoch (%llu)",
                node->name, j,
                (unsigned long long) server.cluster->slots[j]->configEpoch,
                (unsigned long long) requestConfigEpoch);
        return;
    }


    server.cluster->lastVoteEpoch = server.cluster->currentEpoch;
    node->slaveof->voted_time = mstime();
    clusterDoBeforeSleep(CLUSTER_TODO_SAVE_CONFIG|CLUSTER_TODO_FSYNC_CONFIG);
    clusterSendFailoverAuth(node);
    serverLog(LL_WARNING, "Failover auth granted to %.40s for epoch %llu",
        node->name, (unsigned long long) server.cluster->currentEpoch);
}
