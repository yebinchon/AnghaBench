
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * pUnkForRelease; int tymed; } ;
struct TYPE_5__ {void* advise_flags; scalar_t__ sink_id; void* save_stream_num; void* load_stream_num; int dirty; void* id; TYPE_1__ stgmedium; int fmtetc; } ;
typedef int HRESULT ;
typedef int FORMATETC ;
typedef TYPE_2__ DataCacheEntry ;
typedef void* DWORD ;
typedef int BOOL ;


 scalar_t__ FAILED (int ) ;
 int FALSE ;
 void* STREAM_NUMBER_NOT_SET ;
 int TRUE ;
 int TYMED_NULL ;
 int copy_formatetc (int *,int const*) ;

__attribute__((used)) static BOOL init_cache_entry(DataCacheEntry *entry, const FORMATETC *fmt, DWORD advf,
                             DWORD id)
{
    HRESULT hr;

    hr = copy_formatetc(&entry->fmtetc, fmt);
    if (FAILED(hr)) return FALSE;

    entry->stgmedium.tymed = TYMED_NULL;
    entry->stgmedium.pUnkForRelease = ((void*)0);
    entry->id = id;
    entry->dirty = TRUE;
    entry->load_stream_num = STREAM_NUMBER_NOT_SET;
    entry->save_stream_num = STREAM_NUMBER_NOT_SET;
    entry->sink_id = 0;
    entry->advise_flags = advf;

    return TRUE;
}
