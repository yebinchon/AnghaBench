
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_9__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int robj ;
struct TYPE_16__ {TYPE_9__* db; int key; } ;
typedef TYPE_3__ readyList ;
struct TYPE_17__ {TYPE_5__* value; } ;
typedef TYPE_4__ listNode ;
typedef int list ;
typedef int dictEntry ;
struct TYPE_14__ {int * target; } ;
struct TYPE_18__ {scalar_t__ btype; TYPE_2__* lastcmd; TYPE_1__ bpop; } ;
typedef TYPE_5__ client ;
struct TYPE_19__ {int id; int blocking_keys; } ;
struct TYPE_15__ {scalar_t__ proc; } ;


 scalar_t__ BLOCKED_LIST ;
 scalar_t__ C_ERR ;
 int LIST_HEAD ;
 int LIST_TAIL ;
 int NOTIFY_GENERIC ;
 scalar_t__ blpopCommand ;
 int dbDelete (TYPE_9__*,int ) ;
 int decrRefCount (int *) ;
 int * dictFind (int ,int ) ;
 int * dictGetVal (int *) ;
 int incrRefCount (int *) ;
 int listAddNodeTail (int *,TYPE_5__*) ;
 int listDelNode (int *,TYPE_4__*) ;
 TYPE_4__* listFirst (int *) ;
 int listLength (int *) ;
 scalar_t__ listTypeLength (int *) ;
 int * listTypePop (int *,int) ;
 int listTypePush (int *,int *,int) ;
 int notifyKeyspaceEvent (int ,char*,int ,int ) ;
 scalar_t__ serveClientBlockedOnList (TYPE_5__*,int ,int *,TYPE_9__*,int *,int) ;
 int unblockClient (TYPE_5__*) ;

void serveClientsBlockedOnListKey(robj *o, readyList *rl) {


    dictEntry *de = dictFind(rl->db->blocking_keys,rl->key);
    if (de) {
        list *clients = dictGetVal(de);
        int numclients = listLength(clients);

        while(numclients--) {
            listNode *clientnode = listFirst(clients);
            client *receiver = clientnode->value;

            if (receiver->btype != BLOCKED_LIST) {


                listDelNode(clients,clientnode);
                listAddNodeTail(clients,receiver);
                continue;
            }

            robj *dstkey = receiver->bpop.target;
            int where = (receiver->lastcmd &&
                         receiver->lastcmd->proc == blpopCommand) ?
                         LIST_HEAD : LIST_TAIL;
            robj *value = listTypePop(o,where);

            if (value) {



                if (dstkey) incrRefCount(dstkey);
                unblockClient(receiver);

                if (serveClientBlockedOnList(receiver,
                    rl->key,dstkey,rl->db,value,
                    where) == C_ERR)
                {


                    listTypePush(o,value,where);
                }

                if (dstkey) decrRefCount(dstkey);
                decrRefCount(value);
            } else {
                break;
            }
        }
    }

    if (listTypeLength(o) == 0) {
        dbDelete(rl->db,rl->key);
        notifyKeyspaceEvent(NOTIFY_GENERIC,"del",rl->key,rl->db->id);
    }


}
