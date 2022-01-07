
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int buffer ;
typedef int UINT32 ;
struct TYPE_5__ {int biSize; int biWidth; int biHeight; int biPlanes; int biBitCount; int biSizeImage; int biCompression; } ;
struct TYPE_6__ {TYPE_1__ bmiHeader; } ;
typedef int HDC ;
typedef int DWORD ;
typedef int BITMAPINFOHEADER ;
typedef TYPE_2__ BITMAPINFO ;


 int BI_RGB ;
 int DIB_RGB_COLORS ;
 int StretchDIBits (int ,int ,int ,int,int,int ,int ,int,int,int const**,TYPE_2__*,int ,int ) ;
 int memset (TYPE_2__*,int ,int) ;
 int ok (int,char*,int ,int,int,int) ;

__attribute__((used)) static void check_StretchDIBits_pixel(HDC hdcDst, UINT32 *dstBuffer, UINT32 *srcBuffer,
                                      DWORD dwRop, UINT32 expected, int line)
{
    const UINT32 buffer[2] = { 0xFEDCBA98, 0 };
    BITMAPINFO bitmapInfo;

    memset(&bitmapInfo, 0, sizeof(BITMAPINFO));
    bitmapInfo.bmiHeader.biSize = sizeof(BITMAPINFOHEADER);
    bitmapInfo.bmiHeader.biWidth = 2;
    bitmapInfo.bmiHeader.biHeight = 1;
    bitmapInfo.bmiHeader.biPlanes = 1;
    bitmapInfo.bmiHeader.biBitCount = 32;
    bitmapInfo.bmiHeader.biCompression = BI_RGB;
    bitmapInfo.bmiHeader.biSizeImage = sizeof(buffer);

    *dstBuffer = 0x89ABCDEF;

    StretchDIBits(hdcDst, 0, 0, 2, 1, 0, 0, 1, 1, &buffer, &bitmapInfo, DIB_RGB_COLORS, dwRop);
    ok(expected == *dstBuffer,
        "StretchDIBits with dwRop %06X. Expected 0x%08X, got 0x%08X from line %d\n",
        dwRop, expected, *dstBuffer, line);
}
