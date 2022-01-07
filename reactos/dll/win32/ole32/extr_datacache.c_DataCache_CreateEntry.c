
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {int last_cache_id; int cache_list; } ;
struct TYPE_13__ {int entry; } ;
struct TYPE_12__ {int cfFormat; } ;
typedef scalar_t__ HRESULT ;
typedef TYPE_1__ FORMATETC ;
typedef TYPE_2__ DataCacheEntry ;
typedef TYPE_3__ DataCache ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ CACHE_S_FORMATETC_NOTSUPPORTED ;
 scalar_t__ E_OUTOFMEMORY ;
 scalar_t__ FAILED (scalar_t__) ;
 int GetProcessHeap () ;
 TYPE_2__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_2__*) ;
 int TRACE (char*,int ) ;
 scalar_t__ check_valid_formatetc (TYPE_1__ const*) ;
 int init_cache_entry (TYPE_2__*,TYPE_1__ const*,int,int) ;
 int list_add_head (int *,int *) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static HRESULT DataCache_CreateEntry(DataCache *This, const FORMATETC *formatetc, DWORD advf,
                                     BOOL automatic, DataCacheEntry **cache_entry)
{
    HRESULT hr;
    DWORD id = automatic ? 1 : This->last_cache_id;
    DataCacheEntry *entry;

    hr = check_valid_formatetc( formatetc );
    if (FAILED(hr))
        return hr;
    if (hr == CACHE_S_FORMATETC_NOTSUPPORTED)
        TRACE("creating unsupported format %d\n", formatetc->cfFormat);

    entry = HeapAlloc(GetProcessHeap(), 0, sizeof(*entry));
    if (!entry)
        return E_OUTOFMEMORY;

    if (!init_cache_entry(entry, formatetc, advf, id))
        goto fail;

    if (automatic)
        list_add_head(&This->cache_list, &entry->entry);
    else
    {
        list_add_tail(&This->cache_list, &entry->entry);
        This->last_cache_id++;
    }

    if (cache_entry) *cache_entry = entry;
    return hr;

fail:
    HeapFree(GetProcessHeap(), 0, entry);
    return E_OUTOFMEMORY;
}
