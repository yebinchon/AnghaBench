
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int biSize; int biWidth; int biHeight; int biPlanes; int biBitCount; int biXPelsPerMeter; int biYPelsPerMeter; int biClrUsed; int biClrImportant; scalar_t__ biSizeImage; int biCompression; } ;
typedef int RGBQUAD ;
typedef int PVOID ;
typedef int PBITMAPINFO ;
typedef int HDC ;
typedef int HBITMAP ;
typedef TYPE_1__ BITMAPINFOHEADER ;


 int ASSERT (int ) ;
 int BI_RGB ;
 int CreateCompatibleDC (int ) ;
 int CreateDIBSection (int ,int ,int ,int *,int *,int ) ;
 int DIB_PAL_COLORS ;
 scalar_t__ NtGdiSelectBitmap (int ,int ) ;
 int TEST (int) ;

void
Test_SelectDIBSection(void)
{
    HDC hdc;
    HBITMAP hbmp;
    struct
    {
        BITMAPINFOHEADER bmiHeader;
        RGBQUAD bmiColors[100];
    } bmi;
    PBITMAPINFO pbmi = (PBITMAPINFO)&bmi;
    PVOID pvBits;

    hdc = CreateCompatibleDC(0);
    ASSERT(hdc);

    bmi.bmiHeader.biSize = sizeof(BITMAPINFOHEADER);
    bmi.bmiHeader.biWidth = 2;
    bmi.bmiHeader.biHeight = 2;
    bmi.bmiHeader.biPlanes = 1;
    bmi.bmiHeader.biBitCount = 1;
    bmi.bmiHeader.biCompression = BI_RGB;
    bmi.bmiHeader.biSizeImage = 0;
    bmi.bmiHeader.biXPelsPerMeter = 100;
    bmi.bmiHeader.biYPelsPerMeter = 100;
    bmi.bmiHeader.biClrUsed = 2;
    bmi.bmiHeader.biClrImportant = 2;

    hbmp = CreateDIBSection(hdc, pbmi, DIB_PAL_COLORS, &pvBits, ((void*)0), 0);
    ASSERT(hbmp);

    TEST(NtGdiSelectBitmap(hdc, hbmp) != 0);

}
