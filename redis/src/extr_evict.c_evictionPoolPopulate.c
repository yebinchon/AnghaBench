
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct evictionPoolEntry {unsigned long long idle; int dbid; int * cached; int * key; } ;
typedef void* sds ;
typedef int robj ;
typedef int pool ;
typedef int dictEntry ;
typedef int dict ;
struct TYPE_2__ {int maxmemory_samples; int maxmemory_policy; } ;


 int EVPOOL_CACHED_SDS_SIZE ;
 int EVPOOL_SIZE ;
 int LFUDecrAndReturn (int *) ;
 int MAXMEMORY_FLAG_LFU ;
 int MAXMEMORY_FLAG_LRU ;
 int MAXMEMORY_VOLATILE_TTL ;
 long ULLONG_MAX ;
 int * dictFind (int *,void*) ;
 void* dictGetKey (int *) ;
 int dictGetSomeKeys (int *,int **,int) ;
 int * dictGetVal (int *) ;
 unsigned long long estimateObjectIdleTime (int *) ;
 int memcpy (int *,void*,int) ;
 int memmove (struct evictionPoolEntry*,struct evictionPoolEntry*,int) ;
 int * sdsdup (void*) ;
 int sdsfree (int *) ;
 int sdslen (void*) ;
 int sdssetlen (int *,int) ;
 TYPE_1__ server ;
 int serverPanic (char*) ;

void evictionPoolPopulate(int dbid, dict *sampledict, dict *keydict, struct evictionPoolEntry *pool) {
    int j, k, count;
    dictEntry *samples[server.maxmemory_samples];

    count = dictGetSomeKeys(sampledict,samples,server.maxmemory_samples);
    for (j = 0; j < count; j++) {
        unsigned long long idle;
        sds key;
        robj *o;
        dictEntry *de;

        de = samples[j];
        key = dictGetKey(de);




        if (server.maxmemory_policy != MAXMEMORY_VOLATILE_TTL) {
            if (sampledict != keydict) de = dictFind(keydict, key);
            o = dictGetVal(de);
        }




        if (server.maxmemory_policy & MAXMEMORY_FLAG_LRU) {
            idle = estimateObjectIdleTime(o);
        } else if (server.maxmemory_policy & MAXMEMORY_FLAG_LFU) {







            idle = 255-LFUDecrAndReturn(o);
        } else if (server.maxmemory_policy == MAXMEMORY_VOLATILE_TTL) {

            idle = ULLONG_MAX - (long)dictGetVal(de);
        } else {
            serverPanic("Unknown eviction policy in evictionPoolPopulate()");
        }




        k = 0;
        while (k < EVPOOL_SIZE &&
               pool[k].key &&
               pool[k].idle < idle) k++;
        if (k == 0 && pool[EVPOOL_SIZE-1].key != ((void*)0)) {


            continue;
        } else if (k < EVPOOL_SIZE && pool[k].key == ((void*)0)) {

        } else {


            if (pool[EVPOOL_SIZE-1].key == ((void*)0)) {




                sds cached = pool[EVPOOL_SIZE-1].cached;
                memmove(pool+k+1,pool+k,
                    sizeof(pool[0])*(EVPOOL_SIZE-k-1));
                pool[k].cached = cached;
            } else {

                k--;


                sds cached = pool[0].cached;
                if (pool[0].key != pool[0].cached) sdsfree(pool[0].key);
                memmove(pool,pool+1,sizeof(pool[0])*k);
                pool[k].cached = cached;
            }
        }





        int klen = sdslen(key);
        if (klen > EVPOOL_CACHED_SDS_SIZE) {
            pool[k].key = sdsdup(key);
        } else {
            memcpy(pool[k].cached,key,klen+1);
            sdssetlen(pool[k].cached,klen);
            pool[k].key = pool[k].cached;
        }
        pool[k].idle = idle;
        pool[k].dbid = dbid;
    }
}
