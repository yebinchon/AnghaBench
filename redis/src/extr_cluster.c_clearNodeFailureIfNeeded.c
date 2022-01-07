
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int mstime_t ;
struct TYPE_7__ {scalar_t__ numslots; int fail_time; int flags; int name; } ;
typedef TYPE_1__ clusterNode ;
struct TYPE_8__ {int cluster_node_timeout; } ;


 int CLUSTER_FAIL_UNDO_TIME_MULT ;
 int CLUSTER_NODE_FAIL ;
 int CLUSTER_TODO_SAVE_CONFIG ;
 int CLUSTER_TODO_UPDATE_STATE ;
 int LL_NOTICE ;
 int clusterDoBeforeSleep (int) ;
 int mstime () ;
 int nodeFailed (TYPE_1__*) ;
 scalar_t__ nodeIsMaster (TYPE_1__*) ;
 scalar_t__ nodeIsSlave (TYPE_1__*) ;
 TYPE_2__ server ;
 int serverAssert (int ) ;
 int serverLog (int ,char*,int ,...) ;

void clearNodeFailureIfNeeded(clusterNode *node) {
    mstime_t now = mstime();

    serverAssert(nodeFailed(node));



    if (nodeIsSlave(node) || node->numslots == 0) {
        serverLog(LL_NOTICE,
            "Clear FAIL state for node %.40s: %s is reachable again.",
                node->name,
                nodeIsSlave(node) ? "replica" : "master without slots");
        node->flags &= ~CLUSTER_NODE_FAIL;
        clusterDoBeforeSleep(CLUSTER_TODO_UPDATE_STATE|CLUSTER_TODO_SAVE_CONFIG);
    }





    if (nodeIsMaster(node) && node->numslots > 0 &&
        (now - node->fail_time) >
        (server.cluster_node_timeout * CLUSTER_FAIL_UNDO_TIME_MULT))
    {
        serverLog(LL_NOTICE,
            "Clear FAIL state for node %.40s: is reachable again and nobody is serving its slots after some time.",
                node->name);
        node->flags &= ~CLUSTER_NODE_FAIL;
        clusterDoBeforeSleep(CLUSTER_TODO_UPDATE_STATE|CLUSTER_TODO_SAVE_CONFIG);
    }
}
