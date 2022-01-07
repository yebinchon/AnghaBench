
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ ptr; } ;
typedef TYPE_3__ robj ;
typedef int dictIterator ;
typedef int dictEntry ;
typedef int clusterNode ;
struct TYPE_9__ {int keys; } ;
struct TYPE_12__ {int flags; scalar_t__ btype; TYPE_1__ bpop; } ;
typedef TYPE_4__ client ;
struct TYPE_13__ {TYPE_2__* cluster; } ;
struct TYPE_10__ {scalar_t__ state; int ** importing_slots_from; int ** slots; } ;


 scalar_t__ BLOCKED_LIST ;
 scalar_t__ BLOCKED_STREAM ;
 scalar_t__ BLOCKED_ZSET ;
 int CLIENT_BLOCKED ;
 scalar_t__ CLUSTER_FAIL ;
 int CLUSTER_REDIR_DOWN_STATE ;
 int CLUSTER_REDIR_DOWN_UNBOUND ;
 int CLUSTER_REDIR_MOVED ;
 int clusterRedirectClient (TYPE_4__*,int *,int,int ) ;
 int * dictGetIterator (int ) ;
 TYPE_3__* dictGetKey (int *) ;
 int * dictNext (int *) ;
 int dictReleaseIterator (int *) ;
 int keyHashSlot (char*,int ) ;
 int * myself ;
 int sdslen (scalar_t__) ;
 TYPE_5__ server ;

int clusterRedirectBlockedClientIfNeeded(client *c) {
    if (c->flags & CLIENT_BLOCKED &&
        (c->btype == BLOCKED_LIST ||
         c->btype == BLOCKED_ZSET ||
         c->btype == BLOCKED_STREAM))
    {
        dictEntry *de;
        dictIterator *di;


        if (server.cluster->state == CLUSTER_FAIL) {
            clusterRedirectClient(c,((void*)0),0,CLUSTER_REDIR_DOWN_STATE);
            return 1;
        }


        di = dictGetIterator(c->bpop.keys);
        if ((de = dictNext(di)) != ((void*)0)) {
            robj *key = dictGetKey(de);
            int slot = keyHashSlot((char*)key->ptr, sdslen(key->ptr));
            clusterNode *node = server.cluster->slots[slot];




            if (node != myself &&
                server.cluster->importing_slots_from[slot] == ((void*)0))
            {
                if (node == ((void*)0)) {
                    clusterRedirectClient(c,((void*)0),0,
                        CLUSTER_REDIR_DOWN_UNBOUND);
                } else {
                    clusterRedirectClient(c,node,slot,
                        CLUSTER_REDIR_MOVED);
                }
                dictReleaseIterator(di);
                return 1;
            }
        }
        dictReleaseIterator(di);
    }
    return 0;
}
