
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int dictIterator ;
typedef int dictEntry ;
struct TYPE_9__ {scalar_t__ numslots; int port; int numslaves; TYPE_5__** slaves; int name; int ip; } ;
typedef TYPE_2__ clusterNode ;
typedef int client ;
struct TYPE_11__ {int port; int name; int ip; } ;
struct TYPE_10__ {TYPE_1__* cluster; } ;
struct TYPE_8__ {int nodes; } ;


 int CLUSTER_NAMELEN ;
 int CLUSTER_SLOTS ;
 int addReplyArrayLen (int *,int) ;
 int addReplyBulkCBuffer (int *,int ,int ) ;
 int addReplyBulkCString (int *,int ) ;
 void* addReplyDeferredLen (int *) ;
 int addReplyLongLong (int *,int) ;
 int clusterNodeGetSlotBit (TYPE_2__*,int) ;
 int * dictGetSafeIterator (int ) ;
 TYPE_2__* dictGetVal (int *) ;
 int * dictNext (int *) ;
 int dictReleaseIterator (int *) ;
 scalar_t__ nodeFailed (TYPE_5__*) ;
 int nodeIsMaster (TYPE_2__*) ;
 TYPE_3__ server ;
 int setDeferredArrayLen (int *,void*,int) ;

void clusterReplyMultiBulkSlots(client *c) {
    int num_masters = 0;
    void *slot_replylen = addReplyDeferredLen(c);

    dictEntry *de;
    dictIterator *di = dictGetSafeIterator(server.cluster->nodes);
    while((de = dictNext(di)) != ((void*)0)) {
        clusterNode *node = dictGetVal(de);
        int j = 0, start = -1;



        if (!nodeIsMaster(node) || node->numslots == 0) continue;

        for (j = 0; j < CLUSTER_SLOTS; j++) {
            int bit, i;

            if ((bit = clusterNodeGetSlotBit(node,j)) != 0) {
                if (start == -1) start = j;
            }
            if (start != -1 && (!bit || j == CLUSTER_SLOTS-1)) {
                int nested_elements = 3;
                void *nested_replylen = addReplyDeferredLen(c);

                if (bit && j == CLUSTER_SLOTS-1) j++;



                if (start == j-1) {
                    addReplyLongLong(c, start);
                    addReplyLongLong(c, start);
                } else {
                    addReplyLongLong(c, start);
                    addReplyLongLong(c, j-1);
                }
                start = -1;


                addReplyArrayLen(c, 3);
                addReplyBulkCString(c, node->ip);
                addReplyLongLong(c, node->port);
                addReplyBulkCBuffer(c, node->name, CLUSTER_NAMELEN);


                for (i = 0; i < node->numslaves; i++) {


                    if (nodeFailed(node->slaves[i])) continue;
                    addReplyArrayLen(c, 3);
                    addReplyBulkCString(c, node->slaves[i]->ip);
                    addReplyLongLong(c, node->slaves[i]->port);
                    addReplyBulkCBuffer(c, node->slaves[i]->name, CLUSTER_NAMELEN);
                    nested_elements++;
                }
                setDeferredArrayLen(c, nested_replylen, nested_elements);
                num_masters++;
            }
        }
    }
    dictReleaseIterator(di);
    setDeferredArrayLen(c, slot_replylen, num_masters);
}
