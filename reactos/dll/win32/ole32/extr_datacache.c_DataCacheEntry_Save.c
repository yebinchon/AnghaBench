
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int cfFormat; } ;
struct TYPE_9__ {int id; TYPE_6__ fmtetc; int save_stream_num; } ;
typedef int IStream ;
typedef int IStorage ;
typedef int HRESULT ;
typedef TYPE_1__ DataCacheEntry ;
typedef int BOOL ;





 scalar_t__ FAILED (int ) ;
 int FIXME (char*,int) ;
 int IStream_Release (int *) ;
 int TRACE (char*,int ,int ) ;
 int create_stream (TYPE_1__*,int *,int,int **) ;
 int debugstr_formatetc (TYPE_6__*) ;
 int save_dib (TYPE_1__*,int,int *) ;
 int save_emf (TYPE_1__*,int,int *) ;
 int save_mfpict (TYPE_1__*,int,int *) ;
 int save_view_cache (TYPE_1__*,int *) ;

__attribute__((used)) static HRESULT DataCacheEntry_Save(DataCacheEntry *cache_entry, IStorage *storage,
                                   BOOL same_as_load)
{
    HRESULT hr;
    IStream *stream;
    BOOL contents = (cache_entry->id == 1);

    TRACE("stream_number = %d, fmtetc = %s\n", cache_entry->save_stream_num, debugstr_formatetc(&cache_entry->fmtetc));

    hr = create_stream(cache_entry, storage, contents, &stream);
    if (FAILED(hr))
        return hr;

    switch (cache_entry->fmtetc.cfFormat)
    {
    case 130:
        hr = save_dib(cache_entry, contents, stream);
        break;
    case 128:
        hr = save_mfpict(cache_entry, contents, stream);
        break;
    case 129:
        hr = save_emf(cache_entry, contents, stream);
        break;
    case 0:
        hr = save_view_cache(cache_entry, stream);
        break;
    default:
        FIXME("got unsupported clipboard format %x\n", cache_entry->fmtetc.cfFormat);
    }

    IStream_Release(stream);
    return hr;
}
