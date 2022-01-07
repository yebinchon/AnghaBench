
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int robj ;
struct TYPE_8__ {int id; } ;
typedef TYPE_1__ redisDb ;
struct TYPE_9__ {scalar_t__ lazyfree_lazy_expire; int stat_expiredkeys; int * masterhost; } ;


 int NOTIFY_EXPIRED ;
 int dbAsyncDelete (TYPE_1__*,int *) ;
 int dbSyncDelete (TYPE_1__*,int *) ;
 int keyIsExpired (TYPE_1__*,int *) ;
 int notifyKeyspaceEvent (int ,char*,int *,int ) ;
 int propagateExpire (TYPE_1__*,int *,scalar_t__) ;
 TYPE_2__ server ;

int expireIfNeeded(redisDb *db, robj *key) {
    if (!keyIsExpired(db,key)) return 0;
    if (server.masterhost != ((void*)0)) return 1;


    server.stat_expiredkeys++;
    propagateExpire(db,key,server.lazyfree_lazy_expire);
    notifyKeyspaceEvent(NOTIFY_EXPIRED,
        "expired",key,db->id);
    return server.lazyfree_lazy_expire ? dbAsyncDelete(db,key) :
                                         dbSyncDelete(db,key);
}
