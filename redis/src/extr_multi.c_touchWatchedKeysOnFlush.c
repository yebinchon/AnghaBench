
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* key; TYPE_1__* db; } ;
typedef TYPE_3__ watchedKey ;
typedef int listNode ;
typedef int listIter ;
struct TYPE_9__ {int flags; int watched_keys; } ;
typedef TYPE_4__ client ;
struct TYPE_10__ {int clients; } ;
struct TYPE_7__ {int ptr; } ;
struct TYPE_6__ {int id; int dict; } ;


 int CLIENT_DIRTY_CAS ;
 int * dictFind (int ,int ) ;
 int * listNext (int *) ;
 void* listNodeValue (int *) ;
 int listRewind (int ,int *) ;
 TYPE_5__ server ;

void touchWatchedKeysOnFlush(int dbid) {
    listIter li1, li2;
    listNode *ln;


    listRewind(server.clients,&li1);
    while((ln = listNext(&li1))) {
        client *c = listNodeValue(ln);
        listRewind(c->watched_keys,&li2);
        while((ln = listNext(&li2))) {
            watchedKey *wk = listNodeValue(ln);




            if (dbid == -1 || wk->db->id == dbid) {
                if (dictFind(wk->db->dict, wk->key->ptr) != ((void*)0))
                    c->flags |= CLIENT_DIRTY_CAS;
            }
        }
    }
}
