
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ULONGLONG ;
struct TYPE_4__ {scalar_t__ MftId; struct TYPE_4__* Next; } ;
typedef TYPE_1__* PNAME_CACHE_ENTRY ;


 TYPE_1__* CacheHead ;

PNAME_CACHE_ENTRY FindInCache(ULONGLONG MftId)
{
    PNAME_CACHE_ENTRY CacheEntry;

    for (CacheEntry = CacheHead; CacheEntry != ((void*)0); CacheEntry = CacheEntry->Next)
    {
        if (MftId == CacheEntry->MftId)
        {
            return CacheEntry;
        }
    }

    return ((void*)0);
}
