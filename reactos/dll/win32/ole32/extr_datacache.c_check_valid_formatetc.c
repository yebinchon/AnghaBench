
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ dwAspect; scalar_t__ cfFormat; scalar_t__ tymed; } ;
typedef int HRESULT ;
typedef TYPE_1__ FORMATETC ;


 int CACHE_S_FORMATETC_NOTSUPPORTED ;
 scalar_t__ CF_BITMAP ;
 scalar_t__ CF_DIB ;
 scalar_t__ CF_ENHMETAFILE ;
 scalar_t__ CF_METAFILEPICT ;
 scalar_t__ DVASPECT_ICON ;
 int DV_E_FORMATETC ;
 int DV_E_TYMED ;
 int S_OK ;
 scalar_t__ TYMED_ENHMF ;
 scalar_t__ TYMED_GDI ;
 scalar_t__ TYMED_HGLOBAL ;
 scalar_t__ TYMED_MFPICT ;
 int WARN (char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static HRESULT check_valid_formatetc( const FORMATETC *fmt )
{

    if (fmt->dwAspect == DVASPECT_ICON && fmt->cfFormat != CF_METAFILEPICT)
        return DV_E_FORMATETC;

    if (!fmt->cfFormat ||
        (fmt->cfFormat == CF_METAFILEPICT && fmt->tymed == TYMED_MFPICT) ||
        (fmt->cfFormat == CF_BITMAP && fmt->tymed == TYMED_GDI) ||
        (fmt->cfFormat == CF_DIB && fmt->tymed == TYMED_HGLOBAL) ||
        (fmt->cfFormat == CF_ENHMETAFILE && fmt->tymed == TYMED_ENHMF))
        return S_OK;
    else if (fmt->tymed == TYMED_HGLOBAL)
        return CACHE_S_FORMATETC_NOTSUPPORTED;
    else
    {
        WARN("invalid clipformat/tymed combination: %d/%d\n", fmt->cfFormat, fmt->tymed);
        return DV_E_TYMED;
    }
}
