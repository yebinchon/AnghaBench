#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  hGlobal; } ;
struct TYPE_18__ {scalar_t__ tymed; TYPE_3__ u; } ;
struct TYPE_15__ {int /*<<< orphan*/  cfFormat; } ;
struct TYPE_20__ {TYPE_4__ stgmedium; TYPE_1__ fmtetc; } ;
struct TYPE_16__ {scalar_t__ biXPelsPerMeter; scalar_t__ biYPelsPerMeter; int /*<<< orphan*/  biHeight; int /*<<< orphan*/  biWidth; } ;
struct TYPE_19__ {int dwSize; int bfType; int bfSize; scalar_t__ bfOffBits; scalar_t__ bfReserved2; scalar_t__ bfReserved1; TYPE_2__ bmiHeader; void* dwObjectExtentY; void* dwObjectExtentX; } ;
typedef  TYPE_5__ PresentationDataHeader ;
typedef  int /*<<< orphan*/  IStream ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  HDC ;
typedef  TYPE_6__ DataCacheEntry ;
typedef  int /*<<< orphan*/  BOOL ;
typedef  TYPE_5__ BITMAPINFO ;
typedef  TYPE_5__ BITMAPFILEHEADER ;

/* Variables and functions */
 int /*<<< orphan*/  DIB_RGB_COLORS ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,TYPE_5__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LOGPIXELSX ; 
 int /*<<< orphan*/  LOGPIXELSY ; 
 void* FUNC7 (int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ S_OK ; 
 scalar_t__ TYMED_NULL ; 
 scalar_t__ FUNC9 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_6__*,TYPE_5__*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC12(DataCacheEntry *entry, BOOL contents, IStream *stream)
{
    HRESULT hr = S_OK;
    int data_size = 0;
    BITMAPINFO *bmi = NULL;

    if (entry->stgmedium.tymed != TYMED_NULL)
    {
        data_size = FUNC4(entry->stgmedium.u.hGlobal);
        bmi = FUNC3(entry->stgmedium.u.hGlobal);
    }

    if (!contents)
    {
        PresentationDataHeader header;

        FUNC10(entry, &header);
        hr = FUNC11(stream, entry->fmtetc.cfFormat);
        if (FUNC0(hr)) goto end;
        if (data_size)
        {
            header.dwSize = data_size;
            /* Size in units of 0.01mm (ie. MM_HIMETRIC) */
            if (bmi->bmiHeader.biXPelsPerMeter != 0 && bmi->bmiHeader.biYPelsPerMeter != 0)
            {
                header.dwObjectExtentX = FUNC7(bmi->bmiHeader.biWidth, 100000, bmi->bmiHeader.biXPelsPerMeter);
                header.dwObjectExtentY = FUNC7(bmi->bmiHeader.biHeight, 100000, bmi->bmiHeader.biYPelsPerMeter);
            }
            else
            {
                HDC hdc = FUNC1(0);
                header.dwObjectExtentX = FUNC7(bmi->bmiHeader.biWidth, 2540, FUNC2(hdc, LOGPIXELSX));
                header.dwObjectExtentY = FUNC7(bmi->bmiHeader.biHeight, 2540, FUNC2(hdc, LOGPIXELSY));
                FUNC8(0, hdc);
            }
        }
        hr = FUNC6(stream, &header, sizeof(PresentationDataHeader), NULL);
        if (hr == S_OK && data_size)
            hr = FUNC6(stream, bmi, data_size, NULL);
    }
    else if(data_size)
    {
        BITMAPFILEHEADER bmp_fhdr;

        bmp_fhdr.bfType = 0x4d42;
        bmp_fhdr.bfSize = data_size + sizeof(BITMAPFILEHEADER);
        bmp_fhdr.bfReserved1 = bmp_fhdr.bfReserved2 = 0;
        bmp_fhdr.bfOffBits = FUNC9(bmi, DIB_RGB_COLORS) + sizeof(BITMAPFILEHEADER);
        hr = FUNC6(stream, &bmp_fhdr, sizeof(BITMAPFILEHEADER), NULL);
        if (hr == S_OK)
            hr = FUNC6(stream, bmi, data_size, NULL);
    }

end:
    if (bmi) FUNC5(entry->stgmedium.u.hGlobal);
    return hr;
}