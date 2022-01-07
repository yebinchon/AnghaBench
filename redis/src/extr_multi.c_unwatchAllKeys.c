
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int key; TYPE_1__* db; } ;
typedef TYPE_2__ watchedKey ;
typedef int listNode ;
typedef int listIter ;
typedef int list ;
struct TYPE_11__ {int * watched_keys; } ;
typedef TYPE_3__ client ;
struct TYPE_9__ {int watched_keys; } ;


 int decrRefCount (int ) ;
 int dictDelete (int ,int ) ;
 int * dictFetchValue (int ,int ) ;
 int listDelNode (int *,int *) ;
 scalar_t__ listLength (int *) ;
 int * listNext (int *) ;
 TYPE_2__* listNodeValue (int *) ;
 int listRewind (int *,int *) ;
 int * listSearchKey (int *,TYPE_3__*) ;
 int serverAssertWithInfo (TYPE_3__*,int *,int ) ;
 int zfree (TYPE_2__*) ;

void unwatchAllKeys(client *c) {
    listIter li;
    listNode *ln;

    if (listLength(c->watched_keys) == 0) return;
    listRewind(c->watched_keys,&li);
    while((ln = listNext(&li))) {
        list *clients;
        watchedKey *wk;



        wk = listNodeValue(ln);
        clients = dictFetchValue(wk->db->watched_keys, wk->key);
        serverAssertWithInfo(c,((void*)0),clients != ((void*)0));
        listDelNode(clients,listSearchKey(clients,c));

        if (listLength(clients) == 0)
            dictDelete(wk->db->watched_keys, wk->key);

        listDelNode(c->watched_keys,ln);
        decrRefCount(wk->key);
        zfree(wk);
    }
}
