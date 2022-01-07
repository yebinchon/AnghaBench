
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int sds ;
typedef int robj ;
struct TYPE_7__ {int id; } ;
typedef TYPE_1__ redisDb ;
typedef int dictEntry ;
struct TYPE_8__ {int stat_expiredkeys; scalar_t__ lazyfree_lazy_expire; } ;


 int NOTIFY_EXPIRED ;
 int * createStringObject (int ,int ) ;
 int dbAsyncDelete (TYPE_1__*,int *) ;
 int dbSyncDelete (TYPE_1__*,int *) ;
 int decrRefCount (int *) ;
 int dictGetKey (int *) ;
 long long dictGetSignedIntegerVal (int *) ;
 int notifyKeyspaceEvent (int ,char*,int *,int ) ;
 int propagateExpire (TYPE_1__*,int *,scalar_t__) ;
 int sdslen (int ) ;
 TYPE_2__ server ;
 int trackingInvalidateKey (int *) ;

int activeExpireCycleTryExpire(redisDb *db, dictEntry *de, long long now) {
    long long t = dictGetSignedIntegerVal(de);
    if (now > t) {
        sds key = dictGetKey(de);
        robj *keyobj = createStringObject(key,sdslen(key));

        propagateExpire(db,keyobj,server.lazyfree_lazy_expire);
        if (server.lazyfree_lazy_expire)
            dbAsyncDelete(db,keyobj);
        else
            dbSyncDelete(db,keyobj);
        notifyKeyspaceEvent(NOTIFY_EXPIRED,
            "expired",keyobj,db->id);
        trackingInvalidateKey(keyobj);
        decrRefCount(keyobj);
        server.stat_expiredkeys++;
        return 1;
    } else {
        return 0;
    }
}
