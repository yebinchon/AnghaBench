#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct evictionPoolEntry {unsigned long long idle; int dbid; int /*<<< orphan*/ * cached; int /*<<< orphan*/ * key; } ;
typedef  void* sds ;
typedef  int /*<<< orphan*/  robj ;
typedef  int /*<<< orphan*/  pool ;
typedef  int /*<<< orphan*/  dictEntry ;
typedef  int /*<<< orphan*/  dict ;
struct TYPE_2__ {int maxmemory_samples; int maxmemory_policy; } ;

/* Variables and functions */
 int EVPOOL_CACHED_SDS_SIZE ; 
 int EVPOOL_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int MAXMEMORY_FLAG_LFU ; 
 int MAXMEMORY_FLAG_LRU ; 
 int MAXMEMORY_VOLATILE_TTL ; 
 long ULLONG_MAX ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,void*) ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned long long FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,void*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct evictionPoolEntry*,struct evictionPoolEntry*,int) ; 
 int /*<<< orphan*/ * FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (void*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__ server ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 

void FUNC13(int dbid, dict *sampledict, dict *keydict, struct evictionPoolEntry *pool) {
    int j, k, count;
    dictEntry *samples[server.maxmemory_samples];

    count = FUNC3(sampledict,samples,server.maxmemory_samples);
    for (j = 0; j < count; j++) {
        unsigned long long idle;
        sds key;
        robj *o;
        dictEntry *de;

        de = samples[j];
        key = FUNC2(de);

        /* If the dictionary we are sampling from is not the main
         * dictionary (but the expires one) we need to lookup the key
         * again in the key dictionary to obtain the value object. */
        if (server.maxmemory_policy != MAXMEMORY_VOLATILE_TTL) {
            if (sampledict != keydict) de = FUNC1(keydict, key);
            o = FUNC4(de);
        }

        /* Calculate the idle time according to the policy. This is called
         * idle just because the code initially handled LRU, but is in fact
         * just a score where an higher score means better candidate. */
        if (server.maxmemory_policy & MAXMEMORY_FLAG_LRU) {
            idle = FUNC5(o);
        } else if (server.maxmemory_policy & MAXMEMORY_FLAG_LFU) {
            /* When we use an LRU policy, we sort the keys by idle time
             * so that we expire keys starting from greater idle time.
             * However when the policy is an LFU one, we have a frequency
             * estimation, and we want to evict keys with lower frequency
             * first. So inside the pool we put objects using the inverted
             * frequency subtracting the actual frequency to the maximum
             * frequency of 255. */
            idle = 255-FUNC0(o);
        } else if (server.maxmemory_policy == MAXMEMORY_VOLATILE_TTL) {
            /* In this case the sooner the expire the better. */
            idle = ULLONG_MAX - (long)FUNC4(de);
        } else {
            FUNC12("Unknown eviction policy in evictionPoolPopulate()");
        }

        /* Insert the element inside the pool.
         * First, find the first empty bucket or the first populated
         * bucket that has an idle time smaller than our idle time. */
        k = 0;
        while (k < EVPOOL_SIZE &&
               pool[k].key &&
               pool[k].idle < idle) k++;
        if (k == 0 && pool[EVPOOL_SIZE-1].key != NULL) {
            /* Can't insert if the element is < the worst element we have
             * and there are no empty buckets. */
            continue;
        } else if (k < EVPOOL_SIZE && pool[k].key == NULL) {
            /* Inserting into empty position. No setup needed before insert. */
        } else {
            /* Inserting in the middle. Now k points to the first element
             * greater than the element to insert.  */
            if (pool[EVPOOL_SIZE-1].key == NULL) {
                /* Free space on the right? Insert at k shifting
                 * all the elements from k to end to the right. */

                /* Save SDS before overwriting. */
                sds cached = pool[EVPOOL_SIZE-1].cached;
                FUNC7(pool+k+1,pool+k,
                    sizeof(pool[0])*(EVPOOL_SIZE-k-1));
                pool[k].cached = cached;
            } else {
                /* No free space on right? Insert at k-1 */
                k--;
                /* Shift all elements on the left of k (included) to the
                 * left, so we discard the element with smaller idle time. */
                sds cached = pool[0].cached; /* Save SDS before overwriting. */
                if (pool[0].key != pool[0].cached) FUNC9(pool[0].key);
                FUNC7(pool,pool+1,sizeof(pool[0])*k);
                pool[k].cached = cached;
            }
        }

        /* Try to reuse the cached SDS string allocated in the pool entry,
         * because allocating and deallocating this object is costly
         * (according to the profiler, not my fantasy. Remember:
         * premature optimizbla bla bla bla. */
        int klen = FUNC10(key);
        if (klen > EVPOOL_CACHED_SDS_SIZE) {
            pool[k].key = FUNC8(key);
        } else {
            FUNC6(pool[k].cached,key,klen+1);
            FUNC11(pool[k].cached,klen);
            pool[k].key = pool[k].cached;
        }
        pool[k].idle = idle;
        pool[k].dbid = dbid;
    }
}