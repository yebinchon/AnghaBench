
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct evictionPoolEntry {int dbid; scalar_t__ idle; int * key; int * cached; } ;
typedef int * sds ;
typedef int robj ;
struct TYPE_6__ {int id; int * expires; int * dict; } ;
typedef TYPE_1__ redisDb ;
typedef int mstime_t ;
typedef int dictEntry ;
typedef int dict ;
struct TYPE_7__ {int maxmemory_policy; int dbnum; scalar_t__ lazyfree_lazy_eviction; int stat_evictedkeys; TYPE_1__* db; int slaves; scalar_t__ repl_slave_ignore_maxmemory; scalar_t__ masterhost; } ;


 int BIO_LAZY_FREE ;
 int C_ERR ;
 int C_OK ;
 int EVPOOL_SIZE ;
 struct evictionPoolEntry* EvictionPoolLRU ;
 int MAXMEMORY_ALLKEYS_RANDOM ;
 int MAXMEMORY_FLAG_ALLKEYS ;
 int MAXMEMORY_FLAG_LFU ;
 int MAXMEMORY_FLAG_LRU ;
 int MAXMEMORY_NO_EVICTION ;
 int MAXMEMORY_VOLATILE_RANDOM ;
 int MAXMEMORY_VOLATILE_TTL ;
 int NOTIFY_EVICTED ;
 scalar_t__ bioPendingJobsOfType (int ) ;
 scalar_t__ clientsArePaused () ;
 int * createStringObject (int *,int ) ;
 int dbAsyncDelete (TYPE_1__*,int *) ;
 int dbSyncDelete (TYPE_1__*,int *) ;
 int decrRefCount (int *) ;
 int * dictFind (int *,int *) ;
 int * dictGetKey (int *) ;
 int * dictGetRandomKey (int *) ;
 unsigned long dictSize (int *) ;
 int evictionPoolPopulate (int,int *,int *,struct evictionPoolEntry*) ;
 int flushSlavesOutputBuffers () ;
 int getMaxmemoryState (size_t*,int *,size_t*,int *) ;
 int latencyAddSampleIfNeeded (char*,int ) ;
 int latencyEndMonitor (int ) ;
 int latencyRemoveNestedEvent (int ,int ) ;
 int latencyStartMonitor (int ) ;
 int listLength (int ) ;
 int notifyKeyspaceEvent (int ,char*,int *,int ) ;
 int propagateExpire (TYPE_1__*,int *,scalar_t__) ;
 int sdsfree (int *) ;
 int sdslen (int *) ;
 TYPE_2__ server ;
 int usleep (int) ;
 size_t zmalloc_used_memory () ;

int freeMemoryIfNeeded(void) {
    int keys_freed = 0;


    if (server.masterhost && server.repl_slave_ignore_maxmemory) return C_OK;

    size_t mem_reported, mem_tofree, mem_freed;
    mstime_t latency, eviction_latency;
    long long delta;
    int slaves = listLength(server.slaves);




    if (clientsArePaused()) return C_OK;
    if (getMaxmemoryState(&mem_reported,((void*)0),&mem_tofree,((void*)0)) == C_OK)
        return C_OK;

    mem_freed = 0;

    if (server.maxmemory_policy == MAXMEMORY_NO_EVICTION)
        goto cant_free;

    latencyStartMonitor(latency);
    while (mem_freed < mem_tofree) {
        int j, k, i;
        static unsigned int next_db = 0;
        sds bestkey = ((void*)0);
        int bestdbid;
        redisDb *db;
        dict *dict;
        dictEntry *de;

        if (server.maxmemory_policy & (MAXMEMORY_FLAG_LRU|MAXMEMORY_FLAG_LFU) ||
            server.maxmemory_policy == MAXMEMORY_VOLATILE_TTL)
        {
            struct evictionPoolEntry *pool = EvictionPoolLRU;

            while(bestkey == ((void*)0)) {
                unsigned long total_keys = 0, keys;




                for (i = 0; i < server.dbnum; i++) {
                    db = server.db+i;
                    dict = (server.maxmemory_policy & MAXMEMORY_FLAG_ALLKEYS) ?
                            db->dict : db->expires;
                    if ((keys = dictSize(dict)) != 0) {
                        evictionPoolPopulate(i, dict, db->dict, pool);
                        total_keys += keys;
                    }
                }
                if (!total_keys) break;


                for (k = EVPOOL_SIZE-1; k >= 0; k--) {
                    if (pool[k].key == ((void*)0)) continue;
                    bestdbid = pool[k].dbid;

                    if (server.maxmemory_policy & MAXMEMORY_FLAG_ALLKEYS) {
                        de = dictFind(server.db[pool[k].dbid].dict,
                            pool[k].key);
                    } else {
                        de = dictFind(server.db[pool[k].dbid].expires,
                            pool[k].key);
                    }


                    if (pool[k].key != pool[k].cached)
                        sdsfree(pool[k].key);
                    pool[k].key = ((void*)0);
                    pool[k].idle = 0;



                    if (de) {
                        bestkey = dictGetKey(de);
                        break;
                    } else {

                    }
                }
            }
        }


        else if (server.maxmemory_policy == MAXMEMORY_ALLKEYS_RANDOM ||
                 server.maxmemory_policy == MAXMEMORY_VOLATILE_RANDOM)
        {



            for (i = 0; i < server.dbnum; i++) {
                j = (++next_db) % server.dbnum;
                db = server.db+j;
                dict = (server.maxmemory_policy == MAXMEMORY_ALLKEYS_RANDOM) ?
                        db->dict : db->expires;
                if (dictSize(dict) != 0) {
                    de = dictGetRandomKey(dict);
                    bestkey = dictGetKey(de);
                    bestdbid = j;
                    break;
                }
            }
        }


        if (bestkey) {
            db = server.db+bestdbid;
            robj *keyobj = createStringObject(bestkey,sdslen(bestkey));
            propagateExpire(db,keyobj,server.lazyfree_lazy_eviction);
            delta = (long long) zmalloc_used_memory();
            latencyStartMonitor(eviction_latency);
            if (server.lazyfree_lazy_eviction)
                dbAsyncDelete(db,keyobj);
            else
                dbSyncDelete(db,keyobj);
            latencyEndMonitor(eviction_latency);
            latencyAddSampleIfNeeded("eviction-del",eviction_latency);
            latencyRemoveNestedEvent(latency,eviction_latency);
            delta -= (long long) zmalloc_used_memory();
            mem_freed += delta;
            server.stat_evictedkeys++;
            notifyKeyspaceEvent(NOTIFY_EVICTED, "evicted",
                keyobj, db->id);
            decrRefCount(keyobj);
            keys_freed++;





            if (slaves) flushSlavesOutputBuffers();
            if (server.lazyfree_lazy_eviction && !(keys_freed % 16)) {
                if (getMaxmemoryState(((void*)0),((void*)0),((void*)0),((void*)0)) == C_OK) {

                    mem_freed = mem_tofree;
                }
            }
        } else {
            latencyEndMonitor(latency);
            latencyAddSampleIfNeeded("eviction-cycle",latency);
            goto cant_free;
        }
    }
    latencyEndMonitor(latency);
    latencyAddSampleIfNeeded("eviction-cycle",latency);
    return C_OK;

cant_free:



    while(bioPendingJobsOfType(BIO_LAZY_FREE)) {
        if (((mem_reported - zmalloc_used_memory()) + mem_freed) >= mem_tofree)
            break;
        usleep(1000);
    }
    return C_ERR;
}
