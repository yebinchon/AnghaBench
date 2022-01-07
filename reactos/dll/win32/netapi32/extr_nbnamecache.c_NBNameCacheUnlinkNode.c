
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct NBNameCache {int heap; } ;
struct TYPE_4__ {struct TYPE_4__* entry; struct TYPE_4__* next; } ;
typedef TYPE_1__ NBNameCacheNode ;


 int HeapFree (int ,int ,TYPE_1__*) ;

__attribute__((used)) static void NBNameCacheUnlinkNode(struct NBNameCache *cache,
 NBNameCacheNode **prev)
{
    if (cache && prev && *prev)
    {
        NBNameCacheNode *next = (*prev)->next;

        HeapFree(cache->heap, 0, (*prev)->entry);
        HeapFree(cache->heap, 0, *prev);
        *prev = next;
    }
}
