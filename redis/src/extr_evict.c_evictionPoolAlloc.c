
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evictionPoolEntry {scalar_t__ dbid; int cached; int * key; scalar_t__ idle; } ;


 int EVPOOL_CACHED_SDS_SIZE ;
 int EVPOOL_SIZE ;
 struct evictionPoolEntry* EvictionPoolLRU ;
 int sdsnewlen (int *,int ) ;
 struct evictionPoolEntry* zmalloc (int) ;

void evictionPoolAlloc(void) {
    struct evictionPoolEntry *ep;
    int j;

    ep = zmalloc(sizeof(*ep)*EVPOOL_SIZE);
    for (j = 0; j < EVPOOL_SIZE; j++) {
        ep[j].idle = 0;
        ep[j].key = ((void*)0);
        ep[j].cached = sdsnewlen(((void*)0),EVPOOL_CACHED_SDS_SIZE);
        ep[j].dbid = 0;
    }
    EvictionPoolLRU = ep;
}
