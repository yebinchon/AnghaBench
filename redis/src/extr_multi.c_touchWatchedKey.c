
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int robj ;
struct TYPE_5__ {int watched_keys; } ;
typedef TYPE_1__ redisDb ;
typedef int listNode ;
typedef int listIter ;
typedef int list ;
struct TYPE_6__ {int flags; } ;
typedef TYPE_2__ client ;


 int CLIENT_DIRTY_CAS ;
 int * dictFetchValue (int ,int *) ;
 scalar_t__ dictSize (int ) ;
 int * listNext (int *) ;
 TYPE_2__* listNodeValue (int *) ;
 int listRewind (int *,int *) ;

void touchWatchedKey(redisDb *db, robj *key) {
    list *clients;
    listIter li;
    listNode *ln;

    if (dictSize(db->watched_keys) == 0) return;
    clients = dictFetchValue(db->watched_keys, key);
    if (!clients) return;



    listRewind(clients,&li);
    while((ln = listNext(&li))) {
        client *c = listNodeValue(ln);

        c->flags |= CLIENT_DIRTY_CAS;
    }
}
