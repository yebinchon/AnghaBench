
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mempool {void* freelist; } ;



void mempool_free_tile(struct mempool *mp, void *p) {
        * (void**) p = mp->freelist;
        mp->freelist = p;
}
