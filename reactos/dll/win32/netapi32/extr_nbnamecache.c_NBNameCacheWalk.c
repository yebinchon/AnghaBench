
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct NBNameCache {TYPE_2__* head; } ;
struct TYPE_6__ {scalar_t__ expireTime; struct TYPE_6__* next; TYPE_1__* entry; } ;
struct TYPE_5__ {int name; } ;
typedef TYPE_2__ NBNameCacheNode ;


 scalar_t__ GetTickCount () ;
 int NBNameCacheUnlinkNode (struct NBNameCache*,TYPE_2__**) ;
 scalar_t__ NCBNAMSZ ;
 int memcmp (int ,char const*,scalar_t__) ;

__attribute__((used)) static NBNameCacheNode **NBNameCacheWalk(struct NBNameCache *cache,
 const char name[NCBNAMSZ])
{
    NBNameCacheNode **ret = ((void*)0);

    if (cache && cache->head)
    {
        NBNameCacheNode **ptr;

        ptr = &cache->head;
        while (ptr && *ptr && (*ptr)->entry)
        {
            if (!memcmp((*ptr)->entry->name, name, NCBNAMSZ - 1))
                ret = ptr;
            else
            {
                if (GetTickCount() > (*ptr)->expireTime)
                    NBNameCacheUnlinkNode(cache, ptr);
            }
            if (*ptr)
                ptr = &(*ptr)->next;
        }
    }
    return ret;
}
