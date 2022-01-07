
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int cluster_module_flags; int dbnum; TYPE_2__* cluster; TYPE_1__* db; } ;
struct TYPE_5__ {int ** slots; int ** importing_slots_from; } ;
struct TYPE_4__ {int dict; } ;


 int CLUSTER_MODULE_FLAG_NO_REDIRECTION ;
 int CLUSTER_SLOTS ;
 int C_ERR ;
 int C_OK ;
 int LL_WARNING ;
 int clusterAddSlot (int *,int) ;
 int clusterSaveConfigOrDie (int) ;
 int countKeysInSlot (int) ;
 scalar_t__ dictSize (int ) ;
 int * myself ;
 scalar_t__ nodeIsSlave (int *) ;
 TYPE_3__ server ;
 int serverLog (int ,char*,int) ;

int verifyClusterConfigWithData(void) {
    int j;
    int update_config = 0;



    if (server.cluster_module_flags & CLUSTER_MODULE_FLAG_NO_REDIRECTION)
        return C_OK;



    if (nodeIsSlave(myself)) return C_OK;


    for (j = 1; j < server.dbnum; j++) {
        if (dictSize(server.db[j].dict)) return C_ERR;
    }



    for (j = 0; j < CLUSTER_SLOTS; j++) {
        if (!countKeysInSlot(j)) continue;



        if (server.cluster->slots[j] == myself ||
            server.cluster->importing_slots_from[j] != ((void*)0)) continue;





        update_config++;

        if (server.cluster->slots[j] == ((void*)0)) {
            serverLog(LL_WARNING, "I have keys for unassigned slot %d. "
                                    "Taking responsibility for it.",j);
            clusterAddSlot(myself,j);
        } else {
            serverLog(LL_WARNING, "I have keys for slot %d, but the slot is "
                                    "assigned to another node. "
                                    "Setting it to importing state.",j);
            server.cluster->importing_slots_from[j] = server.cluster->slots[j];
        }
    }
    if (update_config) clusterSaveConfigOrDie(1);
    return C_OK;
}
