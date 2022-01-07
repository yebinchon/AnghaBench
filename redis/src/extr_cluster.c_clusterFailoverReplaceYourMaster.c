
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int clusterNode ;
struct TYPE_5__ {int * slaveof; } ;


 int CLUSTER_BROADCAST_ALL ;
 int CLUSTER_SLOTS ;
 int clusterAddSlot (TYPE_1__*,int) ;
 int clusterBroadcastPong (int ) ;
 int clusterDelSlot (int) ;
 scalar_t__ clusterNodeGetSlotBit (int *,int) ;
 int clusterSaveConfigOrDie (int) ;
 int clusterSetNodeAsMaster (TYPE_1__*) ;
 int clusterUpdateState () ;
 TYPE_1__* myself ;
 scalar_t__ nodeIsMaster (TYPE_1__*) ;
 int replicationUnsetMaster () ;
 int resetManualFailover () ;

void clusterFailoverReplaceYourMaster(void) {
    int j;
    clusterNode *oldmaster = myself->slaveof;

    if (nodeIsMaster(myself) || oldmaster == ((void*)0)) return;


    clusterSetNodeAsMaster(myself);
    replicationUnsetMaster();


    for (j = 0; j < CLUSTER_SLOTS; j++) {
        if (clusterNodeGetSlotBit(oldmaster,j)) {
            clusterDelSlot(j);
            clusterAddSlot(myself,j);
        }
    }


    clusterUpdateState();
    clusterSaveConfigOrDie(1);



    clusterBroadcastPong(CLUSTER_BROADCAST_ALL);


    resetManualFailover();
}
