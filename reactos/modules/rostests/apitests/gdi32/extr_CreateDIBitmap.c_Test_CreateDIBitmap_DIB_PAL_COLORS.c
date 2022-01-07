
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WORD ;
typedef int USHORT ;
typedef int ULONG ;
struct TYPE_6__ {int biSize; int biWidth; int biHeight; int biPlanes; int biBitCount; int biXPelsPerMeter; int biYPelsPerMeter; int biClrUsed; scalar_t__ biClrImportant; scalar_t__ biSizeImage; int biCompression; } ;
struct TYPE_5__ {TYPE_3__ bmiHeader; } ;
typedef TYPE_1__* PVOID ;
typedef int * HPALETTE ;
typedef scalar_t__ HDC ;
typedef scalar_t__ HBITMAP ;
typedef int BITMAPINFOHEADER ;
typedef TYPE_1__ BITMAPINFO ;


 int BI_RGB ;
 int CBM_INIT ;
 scalar_t__ CreateCompatibleDC (int ) ;
 scalar_t__ CreateDIBitmap (scalar_t__,TYPE_3__*,int ,int *,TYPE_1__*,int ) ;
 int DIB_PAL_COLORS ;
 int FALSE ;
 int GetLastError () ;
 int SelectObject (scalar_t__,scalar_t__) ;
 int * SelectPalette (scalar_t__,int ,int ) ;
 int ghpal ;
 int ok (int,char*,...) ;

void
Test_CreateDIBitmap_DIB_PAL_COLORS(void)
{
    struct
    {
        BITMAPINFOHEADER bmiHeader;
        WORD bmiColors[8];
    } bmibuffer;
    BITMAPINFO *pbmi = (PVOID)&bmibuffer;
    HBITMAP hbmp;
    ULONG bits[16] = {0};
    HDC hdc;
    HPALETTE hpalOld;
    USHORT i;

    hdc = CreateCompatibleDC(0);
    ok(hdc != 0, "failed\n");


    hpalOld = SelectPalette(hdc, ghpal, FALSE);
    ok(hpalOld != ((void*)0), "error=%ld\n", GetLastError());


    pbmi->bmiHeader.biSize = sizeof(BITMAPINFOHEADER);
    pbmi->bmiHeader.biWidth = 2;
    pbmi->bmiHeader.biHeight = -2;
    pbmi->bmiHeader.biPlanes = 1;
    pbmi->bmiHeader.biBitCount = 8;
    pbmi->bmiHeader.biCompression = BI_RGB;
    pbmi->bmiHeader.biSizeImage = 0;
    pbmi->bmiHeader.biXPelsPerMeter = 1;
    pbmi->bmiHeader.biYPelsPerMeter = 1;
    pbmi->bmiHeader.biClrUsed = 8;
    pbmi->bmiHeader.biClrImportant = 0;

    for( i = 0; i < 8; i++ )
    {
        bmibuffer.bmiColors[i] = i;
    }


    hbmp = CreateDIBitmap(hdc, &pbmi->bmiHeader, CBM_INIT, bits, pbmi, DIB_PAL_COLORS);
    ok(hbmp != 0, "failed\n");

    SelectObject(hdc, hbmp);


}
