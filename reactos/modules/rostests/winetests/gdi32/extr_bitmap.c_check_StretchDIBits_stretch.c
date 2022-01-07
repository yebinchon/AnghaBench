
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


struct TYPE_20__ {int biSize; int biWidth; int biHeight; int biPlanes; int biBitCount; int biCompression; } ;
struct TYPE_21__ {TYPE_1__ bmiHeader; } ;
typedef TYPE_2__ UINT32 ;
typedef int INT ;
typedef int HDC ;
typedef int BITMAPINFOHEADER ;
typedef TYPE_2__ BITMAPINFO ;


 int BI_RGB ;
 int DIB_RGB_COLORS ;
 int SRCCOPY ;
 int StretchDIBits (int ,int,int,int,int,int,int,int,int,TYPE_2__*,TYPE_2__*,int ,int ) ;
 scalar_t__ memcmp (TYPE_2__*,TYPE_2__*,int) ;
 int memset (TYPE_2__*,int ,int) ;
 int ok (int,char*,TYPE_2__,TYPE_2__,TYPE_2__,TYPE_2__,TYPE_2__,TYPE_2__,TYPE_2__,TYPE_2__,int,int,int,int,int,int,int,int,int) ;

__attribute__((used)) static INT check_StretchDIBits_stretch( HDC hdcDst, UINT32 *dstBuffer, UINT32 *srcBuffer,
                                        int nXOriginDest, int nYOriginDest, int nWidthDest, int nHeightDest,
                                        int nXOriginSrc, int nYOriginSrc, int nWidthSrc, int nHeightSrc,
                                        UINT32 expected[4], int line)
{
    BITMAPINFO bitmapInfo;
    INT ret;

    memset(&bitmapInfo, 0, sizeof(BITMAPINFO));
    bitmapInfo.bmiHeader.biSize = sizeof(BITMAPINFOHEADER);
    bitmapInfo.bmiHeader.biWidth = 2;
    bitmapInfo.bmiHeader.biHeight = -2;
    bitmapInfo.bmiHeader.biPlanes = 1;
    bitmapInfo.bmiHeader.biBitCount = 32;
    bitmapInfo.bmiHeader.biCompression = BI_RGB;

    memset(dstBuffer, 0, 16);
    ret = StretchDIBits(hdcDst, nXOriginDest, nYOriginDest, nWidthDest, nHeightDest,
                        nXOriginSrc, nYOriginSrc, nWidthSrc, nHeightSrc,
                        srcBuffer, &bitmapInfo, DIB_RGB_COLORS, SRCCOPY);
    ok(memcmp(dstBuffer, expected, 16) == 0,
        "StretchDIBits expected { %08X, %08X, %08X, %08X } got { %08X, %08X, %08X, %08X } "
        "stretching { %d, %d, %d, %d } to { %d, %d, %d, %d } from line %d\n",
        expected[0], expected[1], expected[2], expected[3],
        dstBuffer[0], dstBuffer[1], dstBuffer[2], dstBuffer[3],
        nXOriginSrc, nYOriginSrc, nWidthSrc, nHeightSrc,
        nXOriginDest, nYOriginDest, nWidthDest, nHeightDest, line);
    return ret;
}
