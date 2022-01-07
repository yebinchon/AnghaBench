
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int stgmedium; } ;
typedef int HRESULT ;
typedef TYPE_1__ DataCacheEntry ;


 int ReleaseStgMedium (int *) ;
 int S_OK ;

__attribute__((used)) static inline HRESULT DataCacheEntry_DiscardData(DataCacheEntry *cache_entry)
{
    ReleaseStgMedium(&cache_entry->stgmedium);
    return S_OK;
}
