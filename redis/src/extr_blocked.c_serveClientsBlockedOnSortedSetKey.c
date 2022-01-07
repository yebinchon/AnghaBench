
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct redisCommand {int name; } ;
typedef int robj ;
struct TYPE_17__ {int * key; TYPE_1__* db; } ;
typedef TYPE_4__ readyList ;
struct TYPE_18__ {TYPE_6__* value; } ;
typedef TYPE_5__ listNode ;
typedef int list ;
typedef int dictEntry ;
struct TYPE_19__ {scalar_t__ btype; TYPE_3__* db; TYPE_2__* lastcmd; } ;
typedef TYPE_6__ client ;
struct TYPE_20__ {struct redisCommand* zpopmaxCommand; struct redisCommand* zpopminCommand; } ;
struct TYPE_16__ {int id; } ;
struct TYPE_15__ {scalar_t__ proc; } ;
struct TYPE_14__ {int blocking_keys; } ;


 scalar_t__ BLOCKED_ZSET ;
 int PROPAGATE_AOF ;
 int PROPAGATE_REPL ;
 int ZSET_MAX ;
 int ZSET_MIN ;
 scalar_t__ bzpopminCommand ;
 int * createStringObject (int ,int ) ;
 int decrRefCount (int *) ;
 int * dictFind (int ,int *) ;
 int * dictGetVal (int *) ;
 int genericZpopCommand (TYPE_6__*,int **,int,int,int,int *) ;
 int incrRefCount (int *) ;
 int listAddNodeTail (int *,TYPE_6__*) ;
 int listDelNode (int *,TYPE_5__*) ;
 TYPE_5__* listFirst (int *) ;
 int listLength (int *) ;
 int propagate (struct redisCommand*,int ,int **,int,int) ;
 TYPE_8__ server ;
 int strlen (int ) ;
 int unblockClient (TYPE_6__*) ;
 unsigned long zsetLength (int *) ;

void serveClientsBlockedOnSortedSetKey(robj *o, readyList *rl) {


    dictEntry *de = dictFind(rl->db->blocking_keys,rl->key);
    if (de) {
        list *clients = dictGetVal(de);
        int numclients = listLength(clients);
        unsigned long zcard = zsetLength(o);

        while(numclients-- && zcard) {
            listNode *clientnode = listFirst(clients);
            client *receiver = clientnode->value;

            if (receiver->btype != BLOCKED_ZSET) {


                listDelNode(clients,clientnode);
                listAddNodeTail(clients,receiver);
                continue;
            }

            int where = (receiver->lastcmd &&
                         receiver->lastcmd->proc == bzpopminCommand)
                         ? ZSET_MIN : ZSET_MAX;
            unblockClient(receiver);
            genericZpopCommand(receiver,&rl->key,1,where,1,((void*)0));
            zcard--;


            robj *argv[2];
            struct redisCommand *cmd = where == ZSET_MIN ?
                                       server.zpopminCommand :
                                       server.zpopmaxCommand;
            argv[0] = createStringObject(cmd->name,strlen(cmd->name));
            argv[1] = rl->key;
            incrRefCount(rl->key);
            propagate(cmd,receiver->db->id,
                      argv,2,PROPAGATE_AOF|PROPAGATE_REPL);
            decrRefCount(argv[0]);
            decrRefCount(argv[1]);
        }
    }
}
