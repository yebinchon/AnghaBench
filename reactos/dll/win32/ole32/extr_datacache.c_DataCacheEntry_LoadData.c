
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int cfFormat; } ;
struct TYPE_8__ {TYPE_1__ fmtetc; int load_stream_num; } ;
typedef int IStream ;
typedef int IStorage ;
typedef int HRESULT ;
typedef TYPE_2__ DataCacheEntry ;





 int E_NOTIMPL ;
 scalar_t__ FAILED (int ) ;
 int FIXME (char*,int) ;
 int IStream_Release (int *) ;
 int OLE_E_BLANK ;
 int load_dib (TYPE_2__*,int *) ;
 int load_emf (TYPE_2__*,int *) ;
 int load_mf_pict (TYPE_2__*,int *) ;
 int open_pres_stream (int *,int ,int **) ;

__attribute__((used)) static HRESULT DataCacheEntry_LoadData(DataCacheEntry *cache_entry, IStorage *stg)
{
    HRESULT hr;
    IStream *stm;

    if (!stg) return OLE_E_BLANK;
    hr = open_pres_stream( stg, cache_entry->load_stream_num, &stm );
    if (FAILED(hr)) return hr;

    switch (cache_entry->fmtetc.cfFormat)
    {
    case 128:
        hr = load_mf_pict( cache_entry, stm );
        break;

    case 130:
        hr = load_dib( cache_entry, stm );
        break;

    case 129:
        hr = load_emf( cache_entry, stm );
        break;

    default:
        FIXME( "Unimplemented clip format %x\n", cache_entry->fmtetc.cfFormat );
        hr = E_NOTIMPL;
    }

    IStream_Release( stm );
    return hr;
}
