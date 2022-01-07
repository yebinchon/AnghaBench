
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int WORD ;
typedef int ULONG ;
struct TYPE_2__ {int biSize; int biWidth; int biHeight; int biPlanes; int biBitCount; int biXPelsPerMeter; int biYPelsPerMeter; int biClrUsed; int biClrImportant; void* biCompression; scalar_t__ biSizeImage; } ;
typedef scalar_t__ PVOID ;
typedef int LPBITMAPINFO ;
typedef scalar_t__ HBITMAP ;
typedef TYPE_1__ BITMAPINFOHEADER ;


 void* BI_BITFIELDS ;
 void* BI_RGB ;
 int BMF_16BPP_555 ;
 int BMF_16BPP_565 ;
 int BMF_1BPP ;
 int BMF_32BPP_BGR ;
 scalar_t__ CreateDIBSection (int ,int ,int ,scalar_t__*,int *,int ) ;
 int DIB_RGB_COLORS ;
 int DeleteObject (scalar_t__) ;
 int GetPixel (int ,int ,int ) ;
 int SelectObject (int ,scalar_t__) ;
 int SetPixel (int ,int ,int ,int) ;
 int Test_SrcMono1 (int ,scalar_t__,scalar_t__) ;
 scalar_t__ hbmp1bpp_a ;
 scalar_t__ hbmp1bpp_b ;
 scalar_t__ hbmpCompat ;
 int hdcDst ;
 int hdcSrc ;
 int iDcFormat ;
 int iXlateFromRGB (int ,int) ;
 int iXlateToRGB (int ,int) ;
 int memset (scalar_t__,int,int) ;
 int ok (int,char*,...) ;

void
Test_SrcMono()
{
    HBITMAP hbmp;
    struct
    {
        BITMAPINFOHEADER bmiHeader;
        ULONG bmiColors[3];
    } bmi;
    PVOID pvBits;
    ULONG c, expected;

    SelectObject(hdcSrc, hbmp1bpp_a);

    Test_SrcMono1(BMF_1BPP, hbmp1bpp_b, 0);
    Test_SrcMono1(iDcFormat, hbmpCompat, 0);

    bmi.bmiHeader.biSize = sizeof(BITMAPINFOHEADER);
    bmi.bmiHeader.biWidth = 2;
    bmi.bmiHeader.biHeight = -2;
    bmi.bmiHeader.biPlanes = 1;
    bmi.bmiHeader.biBitCount = 16;
    bmi.bmiHeader.biCompression = BI_RGB;
    bmi.bmiHeader.biSizeImage = 0;
    bmi.bmiHeader.biXPelsPerMeter = 1;
    bmi.bmiHeader.biYPelsPerMeter = 1;
    bmi.bmiHeader.biClrUsed = 0;
    bmi.bmiHeader.biClrImportant = 0;
    hbmp = CreateDIBSection(hdcDst, (LPBITMAPINFO)&bmi, DIB_RGB_COLORS, &pvBits, ((void*)0), 0);
    ok(hbmp != 0, "CreateDIBSection failed\n");
    memset(pvBits, 0x55555555, 8 * 8 * 2);

    SelectObject(hdcDst, hbmp);

    c = GetPixel(hdcDst, 0, 0);
    expected = iXlateToRGB(BMF_16BPP_555, 0x5555);
    ok(c == expected, "expected %lx, got %lx\n", expected, c);

    expected = 0x123456;
    SetPixel(hdcDst, 0, 0, expected);
    expected = iXlateFromRGB(BMF_16BPP_555, expected);
    c = *(volatile WORD*)pvBits;
    ok(c == expected, "expected %lx, got %lx\n", expected, c);

    Test_SrcMono1(BMF_16BPP_555, hbmp, pvBits);

    DeleteObject(hbmp);


    bmi.bmiHeader.biCompression = BI_BITFIELDS;
    bmi.bmiHeader.biClrUsed = 3;
    bmi.bmiHeader.biClrImportant = 3;
    bmi.bmiColors[0] = 0xF800;
    bmi.bmiColors[1] = 0x7E0;
    bmi.bmiColors[2] = 0x1F;
    hbmp = CreateDIBSection(hdcDst, (LPBITMAPINFO)&bmi, DIB_RGB_COLORS, &pvBits, ((void*)0), 0);
    ok(hbmp != 0, "CreateDIBSection failed\n");
    SelectObject(hdcDst, hbmp);

    Test_SrcMono1(BMF_16BPP_565, hbmp, pvBits);

    DeleteObject(hbmp);


    bmi.bmiHeader.biBitCount = 32;
    bmi.bmiHeader.biCompression = BI_RGB;
    bmi.bmiHeader.biClrUsed = 0;
    bmi.bmiHeader.biClrImportant = 0;
    hbmp = CreateDIBSection(hdcDst, (LPBITMAPINFO)&bmi, DIB_RGB_COLORS, &pvBits, ((void*)0), 0);
    ok(hbmp != 0, "CreateDIBSection failed\n");
    SelectObject(hdcDst, hbmp);

    Test_SrcMono1(BMF_32BPP_BGR, hbmp, pvBits);

    DeleteObject(hbmp);

}
