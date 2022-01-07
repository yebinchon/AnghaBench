
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {int hMetaFilePict; int hBitmap; } ;
struct TYPE_16__ {scalar_t__ tymed; TYPE_1__ u; } ;
struct TYPE_15__ {scalar_t__ cfFormat; scalar_t__ tymed; } ;
struct TYPE_18__ {TYPE_3__ stgmedium; TYPE_2__ fmtetc; void* dirty; } ;
struct TYPE_17__ {scalar_t__ cfFormat; scalar_t__ tymed; } ;
typedef TYPE_3__ STGMEDIUM ;
typedef int HRESULT ;
typedef TYPE_4__ FORMATETC ;
typedef TYPE_5__ DataCacheEntry ;
typedef void* BOOL ;


 scalar_t__ CF_BITMAP ;
 scalar_t__ CF_ENHMETAFILE ;
 scalar_t__ CF_METAFILEPICT ;
 int DV_E_FORMATETC ;
 scalar_t__ FAILED (int ) ;
 int ReleaseStgMedium (TYPE_3__*) ;
 int S_OK ;
 void* TRUE ;
 scalar_t__ TYMED_NULL ;
 int WARN (char*) ;
 int copy_stg_medium (scalar_t__,TYPE_3__*,TYPE_3__*) ;
 int synthesize_dib (int ,TYPE_3__*) ;
 int synthesize_emf (int ,TYPE_3__*) ;

__attribute__((used)) static HRESULT DataCacheEntry_SetData(DataCacheEntry *cache_entry,
                                      const FORMATETC *formatetc,
                                      STGMEDIUM *stgmedium,
                                      BOOL fRelease)
{
    STGMEDIUM copy;
    HRESULT hr;

    if ((!cache_entry->fmtetc.cfFormat && !formatetc->cfFormat) ||
        (cache_entry->fmtetc.tymed == TYMED_NULL && formatetc->tymed == TYMED_NULL) ||
        stgmedium->tymed == TYMED_NULL)
    {
        WARN("invalid formatetc\n");
        return DV_E_FORMATETC;
    }

    cache_entry->dirty = TRUE;
    ReleaseStgMedium(&cache_entry->stgmedium);

    if (formatetc->cfFormat == CF_BITMAP)
    {
        hr = synthesize_dib( stgmedium->u.hBitmap, &copy );
        if (FAILED(hr)) return hr;
        if (fRelease) ReleaseStgMedium(stgmedium);
        stgmedium = &copy;
        fRelease = TRUE;
    }
    else if (formatetc->cfFormat == CF_METAFILEPICT && cache_entry->fmtetc.cfFormat == CF_ENHMETAFILE)
    {
        hr = synthesize_emf( stgmedium->u.hMetaFilePict, &copy );
        if (FAILED(hr)) return hr;
        if (fRelease) ReleaseStgMedium(stgmedium);
        stgmedium = &copy;
        fRelease = TRUE;
    }

    if (fRelease)
    {
        cache_entry->stgmedium = *stgmedium;
        return S_OK;
    }
    else
        return copy_stg_medium(cache_entry->fmtetc.cfFormat, &cache_entry->stgmedium, stgmedium);
}
