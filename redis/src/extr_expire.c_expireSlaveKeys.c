
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef int sds ;
struct TYPE_4__ {int expires; } ;
typedef TYPE_1__ redisDb ;
typedef int mstime_t ;
typedef int dictEntry ;
struct TYPE_5__ {int dbnum; TYPE_1__* db; } ;


 scalar_t__ activeExpireCycleTryExpire (TYPE_1__*,int *,int) ;
 int dictDelete (int *,int ) ;
 int * dictFind (int ,int ) ;
 int dictGetKey (int *) ;
 int * dictGetRandomKey (int *) ;
 int dictGetUnsignedIntegerVal (int *) ;
 int dictSetUnsignedIntegerVal (int *,int) ;
 scalar_t__ dictSize (int *) ;
 int mstime () ;
 TYPE_2__ server ;
 int * slaveKeysWithExpire ;

void expireSlaveKeys(void) {
    if (slaveKeysWithExpire == ((void*)0) ||
        dictSize(slaveKeysWithExpire) == 0) return;

    int cycles = 0, noexpire = 0;
    mstime_t start = mstime();
    while(1) {
        dictEntry *de = dictGetRandomKey(slaveKeysWithExpire);
        sds keyname = dictGetKey(de);
        uint64_t dbids = dictGetUnsignedIntegerVal(de);
        uint64_t new_dbids = 0;



        int dbid = 0;
        while(dbids && dbid < server.dbnum) {
            if ((dbids & 1) != 0) {
                redisDb *db = server.db+dbid;
                dictEntry *expire = dictFind(db->expires,keyname);
                int expired = 0;

                if (expire &&
                    activeExpireCycleTryExpire(server.db+dbid,expire,start))
                {
                    expired = 1;
                }





                if (expire && !expired) {
                    noexpire++;
                    new_dbids |= (uint64_t)1 << dbid;
                }
            }
            dbid++;
            dbids >>= 1;
        }




        if (new_dbids)
            dictSetUnsignedIntegerVal(de,new_dbids);
        else
            dictDelete(slaveKeysWithExpire,keyname);



        cycles++;
        if (noexpire > 3) break;
        if ((cycles % 64) == 0 && mstime()-start > 1) break;
        if (dictSize(slaveKeysWithExpire) == 0) break;
    }
}
