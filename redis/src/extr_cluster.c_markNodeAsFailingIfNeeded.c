
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int name; int fail_time; int flags; } ;
typedef TYPE_2__ clusterNode ;
struct TYPE_10__ {TYPE_1__* cluster; } ;
struct TYPE_8__ {int size; } ;


 int CLUSTER_NODE_FAIL ;
 int CLUSTER_NODE_PFAIL ;
 int CLUSTER_TODO_SAVE_CONFIG ;
 int CLUSTER_TODO_UPDATE_STATE ;
 int LL_NOTICE ;
 int clusterDoBeforeSleep (int) ;
 int clusterNodeFailureReportsCount (TYPE_2__*) ;
 int clusterSendFail (int ) ;
 int mstime () ;
 int myself ;
 scalar_t__ nodeFailed (TYPE_2__*) ;
 scalar_t__ nodeIsMaster (int ) ;
 int nodeTimedOut (TYPE_2__*) ;
 TYPE_3__ server ;
 int serverLog (int ,char*,int ) ;

void markNodeAsFailingIfNeeded(clusterNode *node) {
    int failures;
    int needed_quorum = (server.cluster->size / 2) + 1;

    if (!nodeTimedOut(node)) return;
    if (nodeFailed(node)) return;

    failures = clusterNodeFailureReportsCount(node);

    if (nodeIsMaster(myself)) failures++;
    if (failures < needed_quorum) return;

    serverLog(LL_NOTICE,
        "Marking node %.40s as failing (quorum reached).", node->name);


    node->flags &= ~CLUSTER_NODE_PFAIL;
    node->flags |= CLUSTER_NODE_FAIL;
    node->fail_time = mstime();



    if (nodeIsMaster(myself)) clusterSendFail(node->name);
    clusterDoBeforeSleep(CLUSTER_TODO_UPDATE_STATE|CLUSTER_TODO_SAVE_CONFIG);
}
