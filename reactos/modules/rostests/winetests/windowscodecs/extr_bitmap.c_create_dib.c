
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int bmibuf ;
typedef int bm ;
typedef size_t WORD ;
struct TYPE_15__ {int bmWidth; int bmHeight; int bmPlanes; int bmBitsPixel; int bmWidthBytes; } ;
struct TYPE_12__ {int biSize; int biWidth; int biHeight; int biBitCount; int biPlanes; size_t biClrUsed; size_t biClrImportant; int biCompression; } ;
struct TYPE_14__ {TYPE_3__ bmiHeader; TYPE_2__* bmiColors; } ;
struct TYPE_13__ {int palNumEntries; TYPE_1__* palPalEntry; } ;
struct TYPE_11__ {scalar_t__ rgbReserved; int rgbBlue; int rgbGreen; int rgbRed; } ;
struct TYPE_10__ {int peBlue; int peGreen; int peRed; } ;
typedef int RGBQUAD ;
typedef TYPE_4__ LOGPALETTE ;
typedef scalar_t__ HBITMAP ;
typedef TYPE_5__ BITMAPINFO ;
typedef TYPE_6__ BITMAP ;


 int BI_RGB ;
 scalar_t__ CreateDIBSection (int ,TYPE_5__*,int ,void**,int *,int ) ;
 int DIB_RGB_COLORS ;
 int GetObjectW (scalar_t__,int,TYPE_6__*) ;
 int assert (int) ;
 int memcpy (void*,void const*,int) ;
 int memset (char*,int ,int) ;
 int ok (int,char*,int,...) ;

__attribute__((used)) static HBITMAP create_dib(int width, int height, int bpp, LOGPALETTE *pal, const void *data)
{
    char bmibuf[sizeof(BITMAPINFO) + sizeof(RGBQUAD) * 255];
    BITMAPINFO *bmi = (BITMAPINFO *)bmibuf;
    void *bits;
    HBITMAP hdib;
    BITMAP bm;

    memset(bmibuf, 0, sizeof(bmibuf));
    bmi->bmiHeader.biSize = sizeof(bmi->bmiHeader);
    bmi->bmiHeader.biWidth = width;
    bmi->bmiHeader.biHeight = -height;
    bmi->bmiHeader.biBitCount = bpp;
    bmi->bmiHeader.biPlanes = 1;
    bmi->bmiHeader.biCompression = BI_RGB;
    if (pal)
    {
        WORD i;

        assert(pal->palNumEntries <= 256);
        for (i = 0; i < pal->palNumEntries; i++)
        {
            bmi->bmiColors[i].rgbRed = pal->palPalEntry[i].peRed;
            bmi->bmiColors[i].rgbGreen = pal->palPalEntry[i].peGreen;
            bmi->bmiColors[i].rgbBlue = pal->palPalEntry[i].peBlue;
            bmi->bmiColors[i].rgbReserved = 0;
        }

        bmi->bmiHeader.biClrUsed = pal->palNumEntries;
        bmi->bmiHeader.biClrImportant = pal->palNumEntries;
    }
    hdib = CreateDIBSection(0, bmi, DIB_RGB_COLORS, &bits, ((void*)0), 0);
    ok(hdib != 0, "CreateDIBSection(%dx%d,%d bpp) failed\n", width, height, bpp);

    GetObjectW(hdib, sizeof(bm), &bm);
    ok(bm.bmWidth == width, "expected %d, got %d\n", width, bm.bmWidth);
    ok(bm.bmHeight == height, "expected %d, got %d\n", height, bm.bmHeight);
    ok(bm.bmPlanes == 1, "expected 1, got %d\n", bm.bmPlanes);
    ok(bm.bmBitsPixel == bpp, "expected %d, got %d\n", bpp, bm.bmBitsPixel);

    if (data) memcpy(bits, data, bm.bmWidthBytes * bm.bmHeight);

    return hdib;
}
