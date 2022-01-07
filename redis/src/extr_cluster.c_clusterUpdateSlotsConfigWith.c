
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int uint16_t ;
struct TYPE_10__ {scalar_t__ configEpoch; scalar_t__ numslots; int name; struct TYPE_10__* slaveof; } ;
typedef TYPE_2__ clusterNode ;
struct TYPE_11__ {int cluster_module_flags; TYPE_1__* cluster; } ;
struct TYPE_9__ {TYPE_2__** slots; scalar_t__* importing_slots_from; } ;


 int CLUSTER_MODULE_FLAG_NO_REDIRECTION ;
 int CLUSTER_SLOTS ;
 int CLUSTER_TODO_FSYNC_CONFIG ;
 int CLUSTER_TODO_SAVE_CONFIG ;
 int CLUSTER_TODO_UPDATE_STATE ;
 int LL_WARNING ;
 scalar_t__ bitmapTestBit (unsigned char*,int) ;
 int clusterAddSlot (TYPE_2__*,int) ;
 int clusterDelSlot (int) ;
 int clusterDoBeforeSleep (int) ;
 int clusterSetMaster (TYPE_2__*) ;
 scalar_t__ countKeysInSlot (int) ;
 int delKeysInSlot (int) ;
 TYPE_2__* myself ;
 scalar_t__ nodeIsMaster (TYPE_2__*) ;
 TYPE_3__ server ;
 int serverLog (int ,char*,...) ;

void clusterUpdateSlotsConfigWith(clusterNode *sender, uint64_t senderConfigEpoch, unsigned char *slots) {
    int j;
    clusterNode *curmaster, *newmaster = ((void*)0);







    uint16_t dirty_slots[CLUSTER_SLOTS];
    int dirty_slots_count = 0;




    curmaster = nodeIsMaster(myself) ? myself : myself->slaveof;

    if (sender == myself) {
        serverLog(LL_WARNING,"Discarding UPDATE message about myself.");
        return;
    }

    for (j = 0; j < CLUSTER_SLOTS; j++) {
        if (bitmapTestBit(slots,j)) {

            if (server.cluster->slots[j] == sender) continue;





            if (server.cluster->importing_slots_from[j]) continue;





            if (server.cluster->slots[j] == ((void*)0) ||
                server.cluster->slots[j]->configEpoch < senderConfigEpoch)
            {


                if (server.cluster->slots[j] == myself &&
                    countKeysInSlot(j) &&
                    sender != myself)
                {
                    dirty_slots[dirty_slots_count] = j;
                    dirty_slots_count++;
                }

                if (server.cluster->slots[j] == curmaster)
                    newmaster = sender;
                clusterDelSlot(j);
                clusterAddSlot(sender,j);
                clusterDoBeforeSleep(CLUSTER_TODO_SAVE_CONFIG|
                                     CLUSTER_TODO_UPDATE_STATE|
                                     CLUSTER_TODO_FSYNC_CONFIG);
            }
        }
    }




    if (server.cluster_module_flags & CLUSTER_MODULE_FLAG_NO_REDIRECTION)
        return;
    if (newmaster && curmaster->numslots == 0) {
        serverLog(LL_WARNING,
            "Configuration change detected. Reconfiguring myself "
            "as a replica of %.40s", sender->name);
        clusterSetMaster(sender);
        clusterDoBeforeSleep(CLUSTER_TODO_SAVE_CONFIG|
                             CLUSTER_TODO_UPDATE_STATE|
                             CLUSTER_TODO_FSYNC_CONFIG);
    } else if (dirty_slots_count) {







        for (j = 0; j < dirty_slots_count; j++)
            delKeysInSlot(dirty_slots[j]);
    }
}
