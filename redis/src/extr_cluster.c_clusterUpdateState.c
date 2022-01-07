
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ mstime_t ;
typedef int dictIterator ;
typedef int dictEntry ;
struct TYPE_10__ {int flags; scalar_t__ numslots; } ;
typedef TYPE_3__ clusterNode ;
struct TYPE_11__ {scalar_t__ cluster_node_timeout; TYPE_2__* cluster; scalar_t__ cluster_require_full_coverage; } ;
struct TYPE_9__ {int state; int size; int nodes; TYPE_1__** slots; int todo_before_sleep; } ;
struct TYPE_8__ {int flags; } ;


 int CLUSTER_FAIL ;
 scalar_t__ CLUSTER_MAX_REJOIN_DELAY ;
 scalar_t__ CLUSTER_MIN_REJOIN_DELAY ;
 int CLUSTER_NODE_FAIL ;
 int CLUSTER_NODE_PFAIL ;
 int CLUSTER_OK ;
 int CLUSTER_SLOTS ;
 int CLUSTER_TODO_UPDATE_STATE ;
 scalar_t__ CLUSTER_WRITABLE_DELAY ;
 int LL_WARNING ;
 int * dictGetSafeIterator (int ) ;
 TYPE_3__* dictGetVal (int *) ;
 int * dictNext (int *) ;
 int dictReleaseIterator (int *) ;
 scalar_t__ mstime () ;
 TYPE_3__* myself ;
 scalar_t__ nodeIsMaster (TYPE_3__*) ;
 TYPE_4__ server ;
 int serverLog (int ,char*,char*) ;

void clusterUpdateState(void) {
    int j, new_state;
    int reachable_masters = 0;
    static mstime_t among_minority_time;
    static mstime_t first_call_time = 0;

    server.cluster->todo_before_sleep &= ~CLUSTER_TODO_UPDATE_STATE;







    if (first_call_time == 0) first_call_time = mstime();
    if (nodeIsMaster(myself) &&
        server.cluster->state == CLUSTER_FAIL &&
        mstime() - first_call_time < CLUSTER_WRITABLE_DELAY) return;



    new_state = CLUSTER_OK;


    if (server.cluster_require_full_coverage) {
        for (j = 0; j < CLUSTER_SLOTS; j++) {
            if (server.cluster->slots[j] == ((void*)0) ||
                server.cluster->slots[j]->flags & (CLUSTER_NODE_FAIL))
            {
                new_state = CLUSTER_FAIL;
                break;
            }
        }
    }






    {
        dictIterator *di;
        dictEntry *de;

        server.cluster->size = 0;
        di = dictGetSafeIterator(server.cluster->nodes);
        while((de = dictNext(di)) != ((void*)0)) {
            clusterNode *node = dictGetVal(de);

            if (nodeIsMaster(node) && node->numslots) {
                server.cluster->size++;
                if ((node->flags & (CLUSTER_NODE_FAIL|CLUSTER_NODE_PFAIL)) == 0)
                    reachable_masters++;
            }
        }
        dictReleaseIterator(di);
    }



    {
        int needed_quorum = (server.cluster->size / 2) + 1;

        if (reachable_masters < needed_quorum) {
            new_state = CLUSTER_FAIL;
            among_minority_time = mstime();
        }
    }


    if (new_state != server.cluster->state) {
        mstime_t rejoin_delay = server.cluster_node_timeout;





        if (rejoin_delay > CLUSTER_MAX_REJOIN_DELAY)
            rejoin_delay = CLUSTER_MAX_REJOIN_DELAY;
        if (rejoin_delay < CLUSTER_MIN_REJOIN_DELAY)
            rejoin_delay = CLUSTER_MIN_REJOIN_DELAY;

        if (new_state == CLUSTER_OK &&
            nodeIsMaster(myself) &&
            mstime() - among_minority_time < rejoin_delay)
        {
            return;
        }


        serverLog(LL_WARNING,"Cluster state changed: %s",
            new_state == CLUSTER_OK ? "ok" : "fail");
        server.cluster->state = new_state;
    }
}
