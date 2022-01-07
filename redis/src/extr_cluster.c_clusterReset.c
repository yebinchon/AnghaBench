
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int sds ;
typedef int dictIterator ;
typedef int dictEntry ;
struct TYPE_11__ {int name; scalar_t__ configEpoch; } ;
typedef TYPE_2__ clusterNode ;
struct TYPE_12__ {TYPE_1__* cluster; } ;
struct TYPE_10__ {int nodes; scalar_t__ lastVoteEpoch; scalar_t__ currentEpoch; } ;


 int CLUSTER_NAMELEN ;
 int CLUSTER_SLOTS ;
 int CLUSTER_TODO_FSYNC_CONFIG ;
 int CLUSTER_TODO_SAVE_CONFIG ;
 int CLUSTER_TODO_UPDATE_STATE ;
 int EMPTYDB_NO_FLAGS ;
 int LL_NOTICE ;
 int LL_WARNING ;
 int clusterAddNode (TYPE_2__*) ;
 int clusterCloseAllSlots () ;
 int clusterDelNode (TYPE_2__*) ;
 int clusterDelSlot (int) ;
 int clusterDoBeforeSleep (int) ;
 int clusterSetNodeAsMaster (TYPE_2__*) ;
 int dictDelete (int ,int ) ;
 int * dictGetSafeIterator (int ) ;
 TYPE_2__* dictGetVal (int *) ;
 int * dictNext (int *) ;
 int dictReleaseIterator (int *) ;
 int emptyDb (int,int ,int *) ;
 int getRandomHexChars (int ,int ) ;
 TYPE_2__* myself ;
 scalar_t__ nodeIsSlave (TYPE_2__*) ;
 int replicationUnsetMaster () ;
 int resetManualFailover () ;
 int sdsfree (int ) ;
 int sdsnewlen (int ,int ) ;
 TYPE_3__ server ;
 int serverLog (int ,char*,...) ;

void clusterReset(int hard) {
    dictIterator *di;
    dictEntry *de;
    int j;


    if (nodeIsSlave(myself)) {
        clusterSetNodeAsMaster(myself);
        replicationUnsetMaster();
        emptyDb(-1,EMPTYDB_NO_FLAGS,((void*)0));
    }


    clusterCloseAllSlots();
    resetManualFailover();


    for (j = 0; j < CLUSTER_SLOTS; j++) clusterDelSlot(j);


    di = dictGetSafeIterator(server.cluster->nodes);
    while((de = dictNext(di)) != ((void*)0)) {
        clusterNode *node = dictGetVal(de);

        if (node == myself) continue;
        clusterDelNode(node);
    }
    dictReleaseIterator(di);


    if (hard) {
        sds oldname;

        server.cluster->currentEpoch = 0;
        server.cluster->lastVoteEpoch = 0;
        myself->configEpoch = 0;
        serverLog(LL_WARNING, "configEpoch set to 0 via CLUSTER RESET HARD");



        oldname = sdsnewlen(myself->name, CLUSTER_NAMELEN);
        dictDelete(server.cluster->nodes,oldname);
        sdsfree(oldname);
        getRandomHexChars(myself->name, CLUSTER_NAMELEN);
        clusterAddNode(myself);
        serverLog(LL_NOTICE,"Node hard reset, now I'm %.40s", myself->name);
    }


    clusterDoBeforeSleep(CLUSTER_TODO_SAVE_CONFIG|
                         CLUSTER_TODO_UPDATE_STATE|
                         CLUSTER_TODO_FSYNC_CONFIG);
}
