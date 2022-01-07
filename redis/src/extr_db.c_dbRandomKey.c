
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int sds ;
typedef int robj ;
struct TYPE_5__ {int expires; int dict; } ;
typedef TYPE_1__ redisDb ;
typedef int dictEntry ;
struct TYPE_6__ {scalar_t__ masterhost; } ;


 int * createStringObject (int ,int ) ;
 int decrRefCount (int *) ;
 scalar_t__ dictFind (int ,int ) ;
 int * dictGetFairRandomKey (int ) ;
 int dictGetKey (int *) ;
 scalar_t__ dictSize (int ) ;
 scalar_t__ expireIfNeeded (TYPE_1__*,int *) ;
 int sdslen (int ) ;
 TYPE_2__ server ;

robj *dbRandomKey(redisDb *db) {
    dictEntry *de;
    int maxtries = 100;
    int allvolatile = dictSize(db->dict) == dictSize(db->expires);

    while(1) {
        sds key;
        robj *keyobj;

        de = dictGetFairRandomKey(db->dict);
        if (de == ((void*)0)) return ((void*)0);

        key = dictGetKey(de);
        keyobj = createStringObject(key,sdslen(key));
        if (dictFind(db->expires,key)) {
            if (allvolatile && server.masterhost && --maxtries == 0) {
                return keyobj;
            }
            if (expireIfNeeded(db,keyobj)) {
                decrRefCount(keyobj);
                continue;
            }
        }
        return keyobj;
    }
}
