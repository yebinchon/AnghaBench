
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int * watched_keys; TYPE_1__* db; int * key; } ;
typedef TYPE_2__ watchedKey ;
typedef int robj ;
typedef int listNode ;
typedef int listIter ;
typedef int list ;
typedef TYPE_2__ client ;
struct TYPE_8__ {int watched_keys; } ;


 int dictAdd (int ,int *,int *) ;
 int * dictFetchValue (int ,int *) ;
 scalar_t__ equalStringObjects (int *,int *) ;
 int incrRefCount (int *) ;
 int listAddNodeTail (int *,TYPE_2__*) ;
 int * listCreate () ;
 int * listNext (int *) ;
 TYPE_2__* listNodeValue (int *) ;
 int listRewind (int *,int *) ;
 TYPE_2__* zmalloc (int) ;

void watchForKey(client *c, robj *key) {
    list *clients = ((void*)0);
    listIter li;
    listNode *ln;
    watchedKey *wk;


    listRewind(c->watched_keys,&li);
    while((ln = listNext(&li))) {
        wk = listNodeValue(ln);
        if (wk->db == c->db && equalStringObjects(key,wk->key))
            return;
    }

    clients = dictFetchValue(c->db->watched_keys,key);
    if (!clients) {
        clients = listCreate();
        dictAdd(c->db->watched_keys,key,clients);
        incrRefCount(key);
    }
    listAddNodeTail(clients,c);

    wk = zmalloc(sizeof(*wk));
    wk->key = key;
    wk->db = c->db;
    incrRefCount(key);
    listAddNodeTail(c->watched_keys,wk);
}
