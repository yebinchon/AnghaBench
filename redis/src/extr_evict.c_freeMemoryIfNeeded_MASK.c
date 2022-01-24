#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct evictionPoolEntry {int dbid; scalar_t__ idle; int /*<<< orphan*/ * key; int /*<<< orphan*/ * cached; } ;
typedef  int /*<<< orphan*/ * sds ;
typedef  int /*<<< orphan*/  robj ;
struct TYPE_6__ {int /*<<< orphan*/  id; int /*<<< orphan*/ * expires; int /*<<< orphan*/ * dict; } ;
typedef  TYPE_1__ redisDb ;
typedef  int /*<<< orphan*/  mstime_t ;
typedef  int /*<<< orphan*/  dictEntry ;
typedef  int /*<<< orphan*/  dict ;
struct TYPE_7__ {int maxmemory_policy; int dbnum; scalar_t__ lazyfree_lazy_eviction; int /*<<< orphan*/  stat_evictedkeys; TYPE_1__* db; int /*<<< orphan*/  slaves; scalar_t__ repl_slave_ignore_maxmemory; scalar_t__ masterhost; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_LAZY_FREE ; 
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
 int /*<<< orphan*/  NOTIFY_EVICTED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct evictionPoolEntry*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int FUNC12 (size_t*,int /*<<< orphan*/ *,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 TYPE_2__ server ; 
 int /*<<< orphan*/  FUNC22 (int) ; 
 size_t FUNC23 () ; 

int FUNC24(void) {
    int keys_freed = 0;
    /* By default replicas should ignore maxmemory
     * and just be masters exact copies. */
    if (server.masterhost && server.repl_slave_ignore_maxmemory) return C_OK;

    size_t mem_reported, mem_tofree, mem_freed;
    mstime_t latency, eviction_latency;
    long long delta;
    int slaves = FUNC17(server.slaves);

    /* When clients are paused the dataset should be static not just from the
     * POV of clients not being able to write, but also from the POV of
     * expires and evictions of keys not being performed. */
    if (FUNC1()) return C_OK;
    if (FUNC12(&mem_reported,NULL,&mem_tofree,NULL) == C_OK)
        return C_OK;

    mem_freed = 0;

    if (server.maxmemory_policy == MAXMEMORY_NO_EVICTION)
        goto cant_free; /* We need to free memory, but policy forbids. */

    FUNC16(latency);
    while (mem_freed < mem_tofree) {
        int j, k, i;
        static unsigned int next_db = 0;
        sds bestkey = NULL;
        int bestdbid;
        redisDb *db;
        dict *dict;
        dictEntry *de;

        if (server.maxmemory_policy & (MAXMEMORY_FLAG_LRU|MAXMEMORY_FLAG_LFU) ||
            server.maxmemory_policy == MAXMEMORY_VOLATILE_TTL)
        {
            struct evictionPoolEntry *pool = EvictionPoolLRU;

            while(bestkey == NULL) {
                unsigned long total_keys = 0, keys;

                /* We don't want to make local-db choices when expiring keys,
                 * so to start populate the eviction pool sampling keys from
                 * every DB. */
                for (i = 0; i < server.dbnum; i++) {
                    db = server.db+i;
                    dict = (server.maxmemory_policy & MAXMEMORY_FLAG_ALLKEYS) ?
                            db->dict : db->expires;
                    if ((keys = FUNC9(dict)) != 0) {
                        FUNC10(i, dict, db->dict, pool);
                        total_keys += keys;
                    }
                }
                if (!total_keys) break; /* No keys to evict. */

                /* Go backward from best to worst element to evict. */
                for (k = EVPOOL_SIZE-1; k >= 0; k--) {
                    if (pool[k].key == NULL) continue;
                    bestdbid = pool[k].dbid;

                    if (server.maxmemory_policy & MAXMEMORY_FLAG_ALLKEYS) {
                        de = FUNC6(server.db[pool[k].dbid].dict,
                            pool[k].key);
                    } else {
                        de = FUNC6(server.db[pool[k].dbid].expires,
                            pool[k].key);
                    }

                    /* Remove the entry from the pool. */
                    if (pool[k].key != pool[k].cached)
                        FUNC20(pool[k].key);
                    pool[k].key = NULL;
                    pool[k].idle = 0;

                    /* If the key exists, is our pick. Otherwise it is
                     * a ghost and we need to try the next element. */
                    if (de) {
                        bestkey = FUNC7(de);
                        break;
                    } else {
                        /* Ghost... Iterate again. */
                    }
                }
            }
        }

        /* volatile-random and allkeys-random policy */
        else if (server.maxmemory_policy == MAXMEMORY_ALLKEYS_RANDOM ||
                 server.maxmemory_policy == MAXMEMORY_VOLATILE_RANDOM)
        {
            /* When evicting a random key, we try to evict a key for
             * each DB, so we use the static 'next_db' variable to
             * incrementally visit all DBs. */
            for (i = 0; i < server.dbnum; i++) {
                j = (++next_db) % server.dbnum;
                db = server.db+j;
                dict = (server.maxmemory_policy == MAXMEMORY_ALLKEYS_RANDOM) ?
                        db->dict : db->expires;
                if (FUNC9(dict) != 0) {
                    de = FUNC8(dict);
                    bestkey = FUNC7(de);
                    bestdbid = j;
                    break;
                }
            }
        }

        /* Finally remove the selected key. */
        if (bestkey) {
            db = server.db+bestdbid;
            robj *keyobj = FUNC2(bestkey,FUNC21(bestkey));
            FUNC19(db,keyobj,server.lazyfree_lazy_eviction);
            /* We compute the amount of memory freed by db*Delete() alone.
             * It is possible that actually the memory needed to propagate
             * the DEL in AOF and replication link is greater than the one
             * we are freeing removing the key, but we can't account for
             * that otherwise we would never exit the loop.
             *
             * AOF and Output buffer memory will be freed eventually so
             * we only care about memory used by the key space. */
            delta = (long long) FUNC23();
            FUNC16(eviction_latency);
            if (server.lazyfree_lazy_eviction)
                FUNC3(db,keyobj);
            else
                FUNC4(db,keyobj);
            FUNC14(eviction_latency);
            FUNC13("eviction-del",eviction_latency);
            FUNC15(latency,eviction_latency);
            delta -= (long long) FUNC23();
            mem_freed += delta;
            server.stat_evictedkeys++;
            FUNC18(NOTIFY_EVICTED, "evicted",
                keyobj, db->id);
            FUNC5(keyobj);
            keys_freed++;

            /* When the memory to free starts to be big enough, we may
             * start spending so much time here that is impossible to
             * deliver data to the slaves fast enough, so we force the
             * transmission here inside the loop. */
            if (slaves) FUNC11();

            /* Normally our stop condition is the ability to release
             * a fixed, pre-computed amount of memory. However when we
             * are deleting objects in another thread, it's better to
             * check, from time to time, if we already reached our target
             * memory, since the "mem_freed" amount is computed only
             * across the dbAsyncDelete() call, while the thread can
             * release the memory all the time. */
            if (server.lazyfree_lazy_eviction && !(keys_freed % 16)) {
                if (FUNC12(NULL,NULL,NULL,NULL) == C_OK) {
                    /* Let's satisfy our stop condition. */
                    mem_freed = mem_tofree;
                }
            }
        } else {
            FUNC14(latency);
            FUNC13("eviction-cycle",latency);
            goto cant_free; /* nothing to free... */
        }
    }
    FUNC14(latency);
    FUNC13("eviction-cycle",latency);
    return C_OK;

cant_free:
    /* We are here if we are not able to reclaim memory. There is only one
     * last thing we can try: check if the lazyfree thread has jobs in queue
     * and wait... */
    while(FUNC0(BIO_LAZY_FREE)) {
        if (((mem_reported - FUNC23()) + mem_freed) >= mem_tofree)
            break;
        FUNC22(1000);
    }
    return C_ERR;
}