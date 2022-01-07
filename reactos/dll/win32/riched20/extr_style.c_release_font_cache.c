
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ nRefs; scalar_t__ nAge; } ;
typedef TYPE_1__ ME_FontCacheItem ;



__attribute__((used)) static void release_font_cache(ME_FontCacheItem *item)
{
    if (item->nRefs > 0)
    {
        item->nRefs--;
        item->nAge = 0;
    }
}
