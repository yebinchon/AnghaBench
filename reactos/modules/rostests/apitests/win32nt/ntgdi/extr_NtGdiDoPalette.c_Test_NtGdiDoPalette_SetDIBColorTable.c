
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_2__ {int biSize; int biWidth; int biHeight; int biPlanes; int biBitCount; int biXPelsPerMeter; int biYPelsPerMeter; int biClrUsed; int biClrImportant; scalar_t__ biSizeImage; int biCompression; } ;
typedef int PVOID ;
typedef int * HDC ;
typedef int * HBITMAP ;
typedef int BYTE ;
typedef TYPE_1__ BITMAPINFOHEADER ;
typedef int BITMAPINFO ;


 int BI_RGB ;
 int * CreateCompatibleDC (int ) ;
 int * CreateDIBSection (int *,int *,int ,int *,int *,int ) ;
 int DIB_PAL_COLORS ;
 int DeleteDC (int *) ;
 int DeleteObject (int *) ;
 int FALSE ;
 int GdiPalSetColorTable ;
 int NtGdiDoPalette (int *,int ,int,int**,int ,int ) ;
 int Rectangle (int *,int ,int ,int,int) ;
 int SelectObject (int *,int *) ;
 int SetDCBrushColor (int *,int) ;
 int SetDCPenColor (int *,int) ;
 int ok (int ,char*) ;
 int ok_long (int ,int) ;

void
Test_NtGdiDoPalette_SetDIBColorTable(void)
{
    HDC hdc;
    HBITMAP hbmp;
    BYTE *pjBits;

    struct
    {
        BITMAPINFOHEADER bmiHeader;
        ULONG bmiColors[10];
    } bmi;

    hdc = CreateCompatibleDC(0);
    ok(hdc != ((void*)0), "hdc was NULL.\n");

    bmi.bmiHeader.biSize = sizeof(BITMAPINFOHEADER);
    bmi.bmiHeader.biWidth = 10;
    bmi.bmiHeader.biHeight = 10;
    bmi.bmiHeader.biPlanes = 1;
    bmi.bmiHeader.biBitCount = 8;
    bmi.bmiHeader.biCompression = BI_RGB;
    bmi.bmiHeader.biSizeImage = 0;
    bmi.bmiHeader.biXPelsPerMeter = 1;
    bmi.bmiHeader.biYPelsPerMeter = 1;
    bmi.bmiHeader.biClrUsed = 9;
    bmi.bmiHeader.biClrImportant = 9;
    bmi.bmiColors[0] = 0x000000;
    bmi.bmiColors[1] = 0x202020;
    bmi.bmiColors[2] = 0x404040;
    bmi.bmiColors[3] = 0x606060;
    bmi.bmiColors[4] = 0x808080;
    bmi.bmiColors[5] = 0xA0A0A0;
    bmi.bmiColors[6] = 0xC0C0C0;
    bmi.bmiColors[7] = 0xE0E0E0;
    bmi.bmiColors[8] = 0xffffff;
    hbmp = CreateDIBSection(hdc, (BITMAPINFO*)&bmi, DIB_PAL_COLORS, (PVOID*)&pjBits, ((void*)0), 0);
    ok(hbmp != ((void*)0), "hbmp was NULL.\n");
    ok(pjBits != ((void*)0), "pjBits was NULL.\n");

    SelectObject(hdc, hbmp);

    pjBits[0] = 8;
    pjBits[1] = 1;
    pjBits[2] = 2;
    pjBits[3] = 3;

    bmi.bmiColors[8] = 0x000000;
    bmi.bmiColors[7] = 0x202020;
    bmi.bmiColors[6] = 0x404040;
    bmi.bmiColors[5] = 0x606060;
    bmi.bmiColors[4] = 0x808080;
    bmi.bmiColors[3] = 0xA0A0A0;
    bmi.bmiColors[2] = 0xC0C0C0;
    bmi.bmiColors[1] = 0xE0E0E0;
    bmi.bmiColors[0] = 0xffffff;
    ok_long(NtGdiDoPalette(hdc, 0, 9, &bmi.bmiColors, GdiPalSetColorTable, FALSE), 9);

    SetDCPenColor(hdc, 0xE0E0E0);
    SetDCBrushColor(hdc, 0x202020);
    Rectangle(hdc, 0, 0, 10, 10);

    DeleteDC(hdc);
    DeleteObject(hbmp);
}
