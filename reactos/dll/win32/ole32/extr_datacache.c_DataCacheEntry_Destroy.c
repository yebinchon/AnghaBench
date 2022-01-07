
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int running_object; } ;
struct TYPE_7__ {int ptd; } ;
struct TYPE_8__ {scalar_t__ sink_id; int stgmedium; TYPE_1__ fmtetc; int entry; } ;
typedef TYPE_2__ DataCacheEntry ;
typedef TYPE_3__ DataCache ;


 int CoTaskMemFree (int ) ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_2__*) ;
 int IDataObject_DUnadvise (int ,scalar_t__) ;
 int ReleaseStgMedium (int *) ;
 int list_remove (int *) ;

__attribute__((used)) static void DataCacheEntry_Destroy(DataCache *cache, DataCacheEntry *cache_entry)
{
    list_remove(&cache_entry->entry);
    CoTaskMemFree(cache_entry->fmtetc.ptd);
    ReleaseStgMedium(&cache_entry->stgmedium);
    if(cache_entry->sink_id)
        IDataObject_DUnadvise(cache->running_object, cache_entry->sink_id);

    HeapFree(GetProcessHeap(), 0, cache_entry);
}
