
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* DebugInfo; } ;
struct NBNameCache {int heap; scalar_t__ head; TYPE_2__ cs; } ;
struct TYPE_3__ {scalar_t__* Spare; } ;


 int DeleteCriticalSection (TYPE_2__*) ;
 int HeapFree (int ,int ,struct NBNameCache*) ;
 int NBNameCacheUnlinkNode (struct NBNameCache*,scalar_t__*) ;

void NBNameCacheDestroy(struct NBNameCache *cache)
{
    if (cache)
    {
        cache->cs.DebugInfo->Spare[0] = 0;
        DeleteCriticalSection(&cache->cs);
        while (cache->head)
            NBNameCacheUnlinkNode(cache, &cache->head);
        HeapFree(cache->heap, 0, cache);
    }
}
