
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct NBNameCache {int dummy; } ;
typedef int UCHAR ;
typedef int NBNameCacheEntry ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,int *) ;
 scalar_t__ NBNameCacheAddEntry (struct NBNameCache*,int *) ;
 struct NBNameCache* NBNameCacheCreate (int ,int ) ;
 int NRC_BADDR ;
 int NRC_GOODRET ;
 int NRC_OSRESNOTAV ;
 int gCacheTimeout ;

__attribute__((used)) static UCHAR NetBTStoreCacheEntry(struct NBNameCache **nameCache,
 NBNameCacheEntry *cacheEntry)
{
    UCHAR ret;

    if (!nameCache) return NRC_BADDR;
    if (!cacheEntry) return NRC_BADDR;

    if (!*nameCache)
        *nameCache = NBNameCacheCreate(GetProcessHeap(), gCacheTimeout);
    if (*nameCache)
        ret = NBNameCacheAddEntry(*nameCache, cacheEntry)
         ? NRC_GOODRET : NRC_OSRESNOTAV;
    else
    {
        HeapFree(GetProcessHeap(), 0, cacheEntry);
        ret = NRC_OSRESNOTAV;
    }
    return ret;
}
