
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_14__ ;


struct TYPE_18__ {scalar_t__ type; } ;
typedef TYPE_1__ robj ;
struct TYPE_19__ {int key; TYPE_14__* db; } ;
typedef TYPE_2__ readyList ;
struct TYPE_20__ {TYPE_2__* value; } ;
typedef TYPE_3__ listNode ;
typedef int list ;
struct TYPE_21__ {int * ready_keys; } ;
struct TYPE_17__ {int ready_keys; } ;


 scalar_t__ OBJ_LIST ;
 scalar_t__ OBJ_STREAM ;
 scalar_t__ OBJ_ZSET ;
 int decrRefCount (int ) ;
 int dictDelete (int ,int ) ;
 int * listCreate () ;
 int listDelNode (int *,TYPE_3__*) ;
 TYPE_3__* listFirst (int *) ;
 scalar_t__ listLength (int *) ;
 int listRelease (int *) ;
 TYPE_1__* lookupKeyWrite (TYPE_14__*,int ) ;
 int serveClientsBlockedOnKeyByModule (TYPE_2__*) ;
 int serveClientsBlockedOnListKey (TYPE_1__*,TYPE_2__*) ;
 int serveClientsBlockedOnSortedSetKey (TYPE_1__*,TYPE_2__*) ;
 int serveClientsBlockedOnStreamKey (TYPE_1__*,TYPE_2__*) ;
 TYPE_5__ server ;
 int zfree (TYPE_2__*) ;

void handleClientsBlockedOnKeys(void) {
    while(listLength(server.ready_keys) != 0) {
        list *l;





        l = server.ready_keys;
        server.ready_keys = listCreate();

        while(listLength(l) != 0) {
            listNode *ln = listFirst(l);
            readyList *rl = ln->value;



            dictDelete(rl->db->ready_keys,rl->key);


            robj *o = lookupKeyWrite(rl->db,rl->key);

            if (o != ((void*)0)) {
                if (o->type == OBJ_LIST)
                    serveClientsBlockedOnListKey(o,rl);
                else if (o->type == OBJ_ZSET)
                    serveClientsBlockedOnSortedSetKey(o,rl);
                else if (o->type == OBJ_STREAM)
                    serveClientsBlockedOnStreamKey(o,rl);



                serveClientsBlockedOnKeyByModule(rl);
            }


            decrRefCount(rl->key);
            zfree(rl);
            listDelNode(l,ln);
        }
        listRelease(l);
    }
}
