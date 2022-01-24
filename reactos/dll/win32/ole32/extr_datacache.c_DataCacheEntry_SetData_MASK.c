#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  hMetaFilePict; int /*<<< orphan*/  hBitmap; } ;
struct TYPE_16__ {scalar_t__ tymed; TYPE_1__ u; } ;
struct TYPE_15__ {scalar_t__ cfFormat; scalar_t__ tymed; } ;
struct TYPE_18__ {TYPE_3__ stgmedium; TYPE_2__ fmtetc; void* dirty; } ;
struct TYPE_17__ {scalar_t__ cfFormat; scalar_t__ tymed; } ;
typedef  TYPE_3__ STGMEDIUM ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_4__ FORMATETC ;
typedef  TYPE_5__ DataCacheEntry ;
typedef  void* BOOL ;

/* Variables and functions */
 scalar_t__ CF_BITMAP ; 
 scalar_t__ CF_ENHMETAFILE ; 
 scalar_t__ CF_METAFILEPICT ; 
 int /*<<< orphan*/  DV_E_FORMATETC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  S_OK ; 
 void* TRUE ; 
 scalar_t__ TYMED_NULL ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_3__*) ; 

__attribute__((used)) static HRESULT FUNC6(DataCacheEntry *cache_entry,
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
        FUNC2("invalid formatetc\n");
        return DV_E_FORMATETC;
    }

    cache_entry->dirty = TRUE;
    FUNC1(&cache_entry->stgmedium);

    if (formatetc->cfFormat == CF_BITMAP)
    {
        hr = FUNC4( stgmedium->u.hBitmap, &copy );
        if (FUNC0(hr)) return hr;
        if (fRelease) FUNC1(stgmedium);
        stgmedium = &copy;
        fRelease = TRUE;
    }
    else if (formatetc->cfFormat == CF_METAFILEPICT && cache_entry->fmtetc.cfFormat == CF_ENHMETAFILE)
    {
        hr = FUNC5( stgmedium->u.hMetaFilePict, &copy );
        if (FUNC0(hr)) return hr;
        if (fRelease) FUNC1(stgmedium);
        stgmedium = &copy;
        fRelease = TRUE;
    }

    if (fRelease)
    {
        cache_entry->stgmedium = *stgmedium;
        return S_OK;
    }
    else
        return FUNC3(cache_entry->fmtetc.cfFormat, &cache_entry->stgmedium, stgmedium);
}