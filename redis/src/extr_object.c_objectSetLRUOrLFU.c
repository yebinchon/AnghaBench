
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lru; } ;
typedef TYPE_1__ robj ;
struct TYPE_5__ {int maxmemory_policy; } ;


 int LFUGetTimeInMinutes () ;
 int LRU_CLOCK_MAX ;
 long long LRU_CLOCK_RESOLUTION ;
 int MAXMEMORY_FLAG_LFU ;
 TYPE_2__ server ;
 int serverAssert (int) ;

int objectSetLRUOrLFU(robj *val, long long lfu_freq, long long lru_idle,
                       long long lru_clock) {
    if (server.maxmemory_policy & MAXMEMORY_FLAG_LFU) {
        if (lfu_freq >= 0) {
            serverAssert(lfu_freq <= 255);
            val->lru = (LFUGetTimeInMinutes()<<8) | lfu_freq;
            return 1;
        }
    } else if (lru_idle >= 0) {




        lru_idle = lru_idle*1000/LRU_CLOCK_RESOLUTION;
        long lru_abs = lru_clock - lru_idle;





        if (lru_abs < 0)
            lru_abs = (lru_clock+(LRU_CLOCK_MAX/2)) % LRU_CLOCK_MAX;
        val->lru = lru_abs;
        return 1;
    }
    return 0;
}
