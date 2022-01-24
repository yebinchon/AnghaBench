#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {int /*<<< orphan*/  hEnhMetaFile; } ;
struct TYPE_20__ {scalar_t__ tymed; TYPE_2__ u; } ;
struct TYPE_18__ {int /*<<< orphan*/  cfFormat; } ;
struct TYPE_23__ {TYPE_3__ stgmedium; TYPE_1__ fmtetc; } ;
struct TYPE_22__ {int /*<<< orphan*/  yExt; int /*<<< orphan*/  xExt; } ;
struct TYPE_21__ {int dwSize; int /*<<< orphan*/  dwObjectExtentY; int /*<<< orphan*/  dwObjectExtentX; } ;
typedef  TYPE_4__ PresentationDataHeader ;
typedef  TYPE_5__ METAFILEPICT ;
typedef  int /*<<< orphan*/  IStream ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  ENHMETAHEADER ;
typedef  TYPE_6__ DataCacheEntry ;
typedef  int DWORD ;
typedef  TYPE_4__ BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ,int,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,TYPE_4__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MM_ANISOTROPIC ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ S_OK ; 
 scalar_t__ TYMED_NULL ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,TYPE_4__*,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC12(DataCacheEntry *entry, BOOL contents, IStream *stream)
{
    HRESULT hr = S_OK;
    int data_size = 0;
    BYTE *data;

    if (!contents)
    {
        PresentationDataHeader header;
        METAFILEPICT *mfpict;
        HDC hdc = FUNC1(0);

        FUNC9(entry, &header);
        hr = FUNC11(stream, entry->fmtetc.cfFormat);
        if (FUNC0(hr))
        {
            FUNC8(0, hdc);
            return hr;
        }
        data_size = FUNC4(entry->stgmedium.u.hEnhMetaFile, 0, NULL, MM_ANISOTROPIC, hdc);
        header.dwSize = data_size;
        data = FUNC5(FUNC3(), 0, header.dwSize);
        if (!data)
        {
            FUNC8(0, hdc);
            return E_OUTOFMEMORY;
        }
        FUNC4(entry->stgmedium.u.hEnhMetaFile, header.dwSize, data, MM_ANISOTROPIC, hdc);
        FUNC8(0, hdc);
        mfpict = (METAFILEPICT *)data;
        header.dwObjectExtentX = mfpict->xExt;
        header.dwObjectExtentY = mfpict->yExt;
        hr = FUNC7(stream, &header, sizeof(PresentationDataHeader), NULL);
        if (hr == S_OK && data_size)
            hr = FUNC7(stream, data, data_size, NULL);
        FUNC6(FUNC3(), 0, data);
    }
    else if (entry->stgmedium.tymed != TYMED_NULL)
    {
        data_size = FUNC2(entry->stgmedium.u.hEnhMetaFile, 0, NULL);
        data = FUNC5(FUNC3(), 0, sizeof(DWORD) + sizeof(ENHMETAHEADER) + data_size);
        if (!data) return E_OUTOFMEMORY;
        *((DWORD *)data) = sizeof(ENHMETAHEADER);
        FUNC2(entry->stgmedium.u.hEnhMetaFile, data_size, data + sizeof(DWORD) + sizeof(ENHMETAHEADER));
        FUNC10(data + sizeof(DWORD), data + sizeof(DWORD) + sizeof(ENHMETAHEADER), sizeof(ENHMETAHEADER));
        data_size += sizeof(DWORD) + sizeof(ENHMETAHEADER);
        hr = FUNC7(stream, data, data_size, NULL);
        FUNC6(FUNC3(), 0, data);
    }

    return hr;
}