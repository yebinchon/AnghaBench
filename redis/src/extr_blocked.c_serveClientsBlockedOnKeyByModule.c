
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int key; TYPE_1__* db; } ;
typedef TYPE_2__ readyList ;
struct TYPE_13__ {TYPE_4__* value; } ;
typedef TYPE_3__ listNode ;
typedef int list ;
typedef int dictEntry ;
struct TYPE_14__ {scalar_t__ btype; } ;
typedef TYPE_4__ client ;
struct TYPE_11__ {int blocking_keys; } ;


 scalar_t__ BLOCKED_MODULE ;
 int * dictFind (int ,int ) ;
 int * dictGetVal (int *) ;
 int listAddNodeTail (int *,TYPE_4__*) ;
 int listDelNode (int *,TYPE_3__*) ;
 TYPE_3__* listFirst (int *) ;
 int listLength (int *) ;
 int moduleTryServeClientBlockedOnKey (TYPE_4__*,int ) ;
 int moduleUnblockClient (TYPE_4__*) ;

void serveClientsBlockedOnKeyByModule(readyList *rl) {
    dictEntry *de;



    de = dictFind(rl->db->blocking_keys,rl->key);
    if (de) {
        list *clients = dictGetVal(de);
        int numclients = listLength(clients);

        while(numclients--) {
            listNode *clientnode = listFirst(clients);
            client *receiver = clientnode->value;






            listDelNode(clients,clientnode);
            listAddNodeTail(clients,receiver);

            if (receiver->btype != BLOCKED_MODULE) continue;







            if (!moduleTryServeClientBlockedOnKey(receiver, rl->key)) continue;

            moduleUnblockClient(receiver);
        }
    }
}
