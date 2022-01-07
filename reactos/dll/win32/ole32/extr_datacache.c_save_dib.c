
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_17__ {int hGlobal; } ;
struct TYPE_18__ {scalar_t__ tymed; TYPE_3__ u; } ;
struct TYPE_15__ {int cfFormat; } ;
struct TYPE_20__ {TYPE_4__ stgmedium; TYPE_1__ fmtetc; } ;
struct TYPE_16__ {scalar_t__ biXPelsPerMeter; scalar_t__ biYPelsPerMeter; int biHeight; int biWidth; } ;
struct TYPE_19__ {int dwSize; int bfType; int bfSize; scalar_t__ bfOffBits; scalar_t__ bfReserved2; scalar_t__ bfReserved1; TYPE_2__ bmiHeader; void* dwObjectExtentY; void* dwObjectExtentX; } ;
typedef TYPE_5__ PresentationDataHeader ;
typedef int IStream ;
typedef scalar_t__ HRESULT ;
typedef int HDC ;
typedef TYPE_6__ DataCacheEntry ;
typedef int BOOL ;
typedef TYPE_5__ BITMAPINFO ;
typedef TYPE_5__ BITMAPFILEHEADER ;


 int DIB_RGB_COLORS ;
 scalar_t__ FAILED (scalar_t__) ;
 int GetDC (int ) ;
 scalar_t__ GetDeviceCaps (int ,int ) ;
 TYPE_5__* GlobalLock (int ) ;
 int GlobalSize (int ) ;
 int GlobalUnlock (int ) ;
 scalar_t__ IStream_Write (int *,TYPE_5__*,int,int *) ;
 int LOGPIXELSX ;
 int LOGPIXELSY ;
 void* MulDiv (int ,int,scalar_t__) ;
 int ReleaseDC (int ,int ) ;
 scalar_t__ S_OK ;
 scalar_t__ TYMED_NULL ;
 scalar_t__ bitmap_info_size (TYPE_5__*,int ) ;
 int init_stream_header (TYPE_6__*,TYPE_5__*) ;
 scalar_t__ write_clipformat (int *,int ) ;

__attribute__((used)) static HRESULT save_dib(DataCacheEntry *entry, BOOL contents, IStream *stream)
{
    HRESULT hr = S_OK;
    int data_size = 0;
    BITMAPINFO *bmi = ((void*)0);

    if (entry->stgmedium.tymed != TYMED_NULL)
    {
        data_size = GlobalSize(entry->stgmedium.u.hGlobal);
        bmi = GlobalLock(entry->stgmedium.u.hGlobal);
    }

    if (!contents)
    {
        PresentationDataHeader header;

        init_stream_header(entry, &header);
        hr = write_clipformat(stream, entry->fmtetc.cfFormat);
        if (FAILED(hr)) goto end;
        if (data_size)
        {
            header.dwSize = data_size;

            if (bmi->bmiHeader.biXPelsPerMeter != 0 && bmi->bmiHeader.biYPelsPerMeter != 0)
            {
                header.dwObjectExtentX = MulDiv(bmi->bmiHeader.biWidth, 100000, bmi->bmiHeader.biXPelsPerMeter);
                header.dwObjectExtentY = MulDiv(bmi->bmiHeader.biHeight, 100000, bmi->bmiHeader.biYPelsPerMeter);
            }
            else
            {
                HDC hdc = GetDC(0);
                header.dwObjectExtentX = MulDiv(bmi->bmiHeader.biWidth, 2540, GetDeviceCaps(hdc, LOGPIXELSX));
                header.dwObjectExtentY = MulDiv(bmi->bmiHeader.biHeight, 2540, GetDeviceCaps(hdc, LOGPIXELSY));
                ReleaseDC(0, hdc);
            }
        }
        hr = IStream_Write(stream, &header, sizeof(PresentationDataHeader), ((void*)0));
        if (hr == S_OK && data_size)
            hr = IStream_Write(stream, bmi, data_size, ((void*)0));
    }
    else if(data_size)
    {
        BITMAPFILEHEADER bmp_fhdr;

        bmp_fhdr.bfType = 0x4d42;
        bmp_fhdr.bfSize = data_size + sizeof(BITMAPFILEHEADER);
        bmp_fhdr.bfReserved1 = bmp_fhdr.bfReserved2 = 0;
        bmp_fhdr.bfOffBits = bitmap_info_size(bmi, DIB_RGB_COLORS) + sizeof(BITMAPFILEHEADER);
        hr = IStream_Write(stream, &bmp_fhdr, sizeof(BITMAPFILEHEADER), ((void*)0));
        if (hr == S_OK)
            hr = IStream_Write(stream, bmi, data_size, ((void*)0));
    }

end:
    if (bmi) GlobalUnlock(entry->stgmedium.u.hGlobal);
    return hr;
}
