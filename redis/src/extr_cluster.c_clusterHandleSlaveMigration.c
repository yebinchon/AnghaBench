
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int dictIterator ;
typedef int dictEntry ;
struct TYPE_13__ {int numslaves; int flags; scalar_t__ numslots; scalar_t__ orphaned_time; int name; struct TYPE_13__** slaves; struct TYPE_13__* slaveof; } ;
typedef TYPE_2__ clusterNode ;
struct TYPE_14__ {int cluster_migration_barrier; int cluster_module_flags; TYPE_1__* cluster; } ;
struct TYPE_12__ {scalar_t__ state; int nodes; } ;


 int CLUSTER_MODULE_FLAG_NO_FAILOVER ;
 int CLUSTER_NAMELEN ;
 int CLUSTER_NODE_MIGRATE_TO ;
 scalar_t__ CLUSTER_OK ;
 scalar_t__ CLUSTER_SLAVE_MIGRATION_DELAY ;
 int LL_WARNING ;
 int clusterCountNonFailingSlaves (TYPE_2__*) ;
 int clusterSetMaster (TYPE_2__*) ;
 int * dictGetSafeIterator (int ) ;
 TYPE_2__* dictGetVal (int *) ;
 int * dictNext (int *) ;
 int dictReleaseIterator (int *) ;
 scalar_t__ memcmp (int ,int ,int ) ;
 scalar_t__ mstime () ;
 TYPE_2__* myself ;
 scalar_t__ nodeFailed (TYPE_2__*) ;
 scalar_t__ nodeIsMaster (TYPE_2__*) ;
 scalar_t__ nodeIsSlave (TYPE_2__*) ;
 int nodeTimedOut (TYPE_2__*) ;
 TYPE_3__ server ;
 int serverLog (int ,char*,int ) ;

void clusterHandleSlaveMigration(int max_slaves) {
    int j, okslaves = 0;
    clusterNode *mymaster = myself->slaveof, *target = ((void*)0), *candidate = ((void*)0);
    dictIterator *di;
    dictEntry *de;


    if (server.cluster->state != CLUSTER_OK) return;



    if (mymaster == ((void*)0)) return;
    for (j = 0; j < mymaster->numslaves; j++)
        if (!nodeFailed(mymaster->slaves[j]) &&
            !nodeTimedOut(mymaster->slaves[j])) okslaves++;
    if (okslaves <= server.cluster_migration_barrier) return;
    candidate = myself;
    di = dictGetSafeIterator(server.cluster->nodes);
    while((de = dictNext(di)) != ((void*)0)) {
        clusterNode *node = dictGetVal(de);
        int okslaves = 0, is_orphaned = 1;





        if (nodeIsSlave(node) || nodeFailed(node)) is_orphaned = 0;
        if (!(node->flags & CLUSTER_NODE_MIGRATE_TO)) is_orphaned = 0;


        if (nodeIsMaster(node)) okslaves = clusterCountNonFailingSlaves(node);
        if (okslaves > 0) is_orphaned = 0;

        if (is_orphaned) {
            if (!target && node->numslots > 0) target = node;



            if (!node->orphaned_time) node->orphaned_time = mstime();
        } else {
            node->orphaned_time = 0;
        }




        if (okslaves == max_slaves) {
            for (j = 0; j < node->numslaves; j++) {
                if (memcmp(node->slaves[j]->name,
                           candidate->name,
                           CLUSTER_NAMELEN) < 0)
                {
                    candidate = node->slaves[j];
                }
            }
        }
    }
    dictReleaseIterator(di);






    if (target && candidate == myself &&
        (mstime()-target->orphaned_time) > CLUSTER_SLAVE_MIGRATION_DELAY &&
       !(server.cluster_module_flags & CLUSTER_MODULE_FLAG_NO_FAILOVER))
    {
        serverLog(LL_WARNING,"Migrating to orphaned master %.40s",
            target->name);
        clusterSetMaster(target);
    }
}
