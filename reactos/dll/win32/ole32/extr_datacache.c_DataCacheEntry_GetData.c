
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int hGlobal; } ;
struct TYPE_13__ {scalar_t__ tymed; TYPE_1__ u; } ;
struct TYPE_10__ {int cfFormat; } ;
struct TYPE_12__ {scalar_t__ load_stream_num; TYPE_5__ stgmedium; TYPE_2__ fmtetc; } ;
struct TYPE_11__ {scalar_t__ cfFormat; } ;
typedef int STGMEDIUM ;
typedef int IStorage ;
typedef int HRESULT ;
typedef TYPE_3__ FORMATETC ;
typedef TYPE_4__ DataCacheEntry ;


 scalar_t__ CF_BITMAP ;
 int DataCacheEntry_LoadData (TYPE_4__*,int *) ;
 scalar_t__ FAILED (int ) ;
 int OLE_E_BLANK ;
 scalar_t__ STREAM_NUMBER_NOT_SET ;
 scalar_t__ TYMED_NULL ;
 int copy_stg_medium (int ,int *,TYPE_5__*) ;
 int synthesize_bitmap (int ,int *) ;

__attribute__((used)) static HRESULT DataCacheEntry_GetData(DataCacheEntry *cache_entry, IStorage *stg, FORMATETC *fmt, STGMEDIUM *stgmedium)
{
    if (cache_entry->stgmedium.tymed == TYMED_NULL && cache_entry->load_stream_num != STREAM_NUMBER_NOT_SET)
    {
        HRESULT hr = DataCacheEntry_LoadData(cache_entry, stg);
        if (FAILED(hr))
            return hr;
    }
    if (cache_entry->stgmedium.tymed == TYMED_NULL)
        return OLE_E_BLANK;

    if (fmt->cfFormat == CF_BITMAP)
        return synthesize_bitmap( cache_entry->stgmedium.u.hGlobal, stgmedium );

    return copy_stg_medium(cache_entry->fmtetc.cfFormat, stgmedium, &cache_entry->stgmedium);
}
