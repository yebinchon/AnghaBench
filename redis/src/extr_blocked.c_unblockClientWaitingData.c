
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int robj ;
typedef int list ;
typedef int dictIterator ;
typedef int dictEntry ;
struct TYPE_8__ {int * xread_consumer; int * xread_group; int * target; int keys; } ;
struct TYPE_9__ {TYPE_2__ bpop; TYPE_1__* db; } ;
typedef TYPE_3__ client ;
struct TYPE_7__ {int blocking_keys; } ;


 int decrRefCount (int *) ;
 int dictDelete (int ,int *) ;
 int dictEmpty (int ,int *) ;
 int * dictFetchValue (int ,int *) ;
 int * dictGetIterator (int ) ;
 int * dictGetKey (int *) ;
 int * dictNext (int *) ;
 int dictReleaseIterator (int *) ;
 scalar_t__ dictSize (int ) ;
 int listDelNode (int *,int ) ;
 scalar_t__ listLength (int *) ;
 int listSearchKey (int *,TYPE_3__*) ;
 int serverAssertWithInfo (TYPE_3__*,int *,int) ;

void unblockClientWaitingData(client *c) {
    dictEntry *de;
    dictIterator *di;
    list *l;

    serverAssertWithInfo(c,((void*)0),dictSize(c->bpop.keys) != 0);
    di = dictGetIterator(c->bpop.keys);

    while((de = dictNext(di)) != ((void*)0)) {
        robj *key = dictGetKey(de);


        l = dictFetchValue(c->db->blocking_keys,key);
        serverAssertWithInfo(c,key,l != ((void*)0));
        listDelNode(l,listSearchKey(l,c));

        if (listLength(l) == 0)
            dictDelete(c->db->blocking_keys,key);
    }
    dictReleaseIterator(di);


    dictEmpty(c->bpop.keys,((void*)0));
    if (c->bpop.target) {
        decrRefCount(c->bpop.target);
        c->bpop.target = ((void*)0);
    }
    if (c->bpop.xread_group) {
        decrRefCount(c->bpop.xread_group);
        decrRefCount(c->bpop.xread_consumer);
        c->bpop.xread_group = ((void*)0);
        c->bpop.xread_consumer = ((void*)0);
    }
}
