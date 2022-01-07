
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct NBNameCache {int cs; } ;
typedef char UCHAR ;
struct TYPE_3__ {int * entry; } ;
typedef TYPE_1__ NBNameCacheNode ;
typedef int NBNameCacheEntry ;


 int EnterCriticalSection (int *) ;
 int LeaveCriticalSection (int *) ;
 TYPE_1__** NBNameCacheWalk (struct NBNameCache*,char const*) ;
 int NCBNAMSZ ;
 int memcpy (char*,char const*,int) ;

const NBNameCacheEntry *NBNameCacheFindEntry(struct NBNameCache *cache,
 const UCHAR name[NCBNAMSZ])
{
    const NBNameCacheEntry *ret;
    UCHAR printName[NCBNAMSZ];

    memcpy(printName, name, NCBNAMSZ - 1);
    printName[NCBNAMSZ - 1] = '\0';
    if (cache)
    {
        NBNameCacheNode **node;

        EnterCriticalSection(&cache->cs);
        node = NBNameCacheWalk(cache, (const char *)name);
        if (node)
            ret = (*node)->entry;
        else
            ret = ((void*)0);
        LeaveCriticalSection(&cache->cs);
    }
    else
        ret = ((void*)0);
    return ret;
}
