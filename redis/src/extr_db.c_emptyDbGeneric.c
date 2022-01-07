
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int expires; int dict; } ;
typedef TYPE_1__ redisDb ;
struct TYPE_9__ {int dbnum; scalar_t__ cluster_enabled; } ;
struct TYPE_8__ {int member_1; int member_2; int member_0; } ;
typedef TYPE_2__ RedisModuleFlushInfoV1 ;


 int EINVAL ;
 int EMPTYDB_ASYNC ;
 int REDISMODULE_EVENT_FLUSHDB ;
 int REDISMODULE_FLUSHINFO_VERSION ;
 int REDISMODULE_SUBEVENT_FLUSHDB_END ;
 int REDISMODULE_SUBEVENT_FLUSHDB_START ;
 int dictEmpty (int ,void (*) (void*)) ;
 scalar_t__ dictSize (int ) ;
 int emptyDbAsync (TYPE_1__*) ;
 int errno ;
 int flushSlaveKeysWithExpireList () ;
 int moduleFireServerEvent (int ,int ,TYPE_2__*) ;
 TYPE_3__ server ;
 int signalFlushedDb (int) ;
 int slotToKeyFlush () ;
 int slotToKeyFlushAsync () ;

long long emptyDbGeneric(redisDb *dbarray, int dbnum, int flags, void(callback)(void*)) {
    int async = (flags & EMPTYDB_ASYNC);
    long long removed = 0;

    if (dbnum < -1 || dbnum >= server.dbnum) {
        errno = EINVAL;
        return -1;
    }


    RedisModuleFlushInfoV1 fi = {REDISMODULE_FLUSHINFO_VERSION,!async,dbnum};
    moduleFireServerEvent(REDISMODULE_EVENT_FLUSHDB,
                          REDISMODULE_SUBEVENT_FLUSHDB_START,
                          &fi);




    signalFlushedDb(dbnum);

    int startdb, enddb;
    if (dbnum == -1) {
        startdb = 0;
        enddb = server.dbnum-1;
    } else {
        startdb = enddb = dbnum;
    }

    for (int j = startdb; j <= enddb; j++) {
        removed += dictSize(dbarray[j].dict);
        if (async) {
            emptyDbAsync(&dbarray[j]);
        } else {
            dictEmpty(dbarray[j].dict,callback);
            dictEmpty(dbarray[j].expires,callback);
        }
    }
    if (server.cluster_enabled) {
        if (async) {
            slotToKeyFlushAsync();
        } else {
            slotToKeyFlush();
        }
    }
    if (dbnum == -1) flushSlaveKeysWithExpireList();



    moduleFireServerEvent(REDISMODULE_EVENT_FLUSHDB,
                          REDISMODULE_SUBEVENT_FLUSHDB_END,
                          &fi);

    return removed;
}
