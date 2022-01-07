
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_2__ {int biSize; int biWidth; int biHeight; int biPlanes; int biBitCount; scalar_t__ biClrImportant; scalar_t__ biClrUsed; scalar_t__ biYPelsPerMeter; scalar_t__ biXPelsPerMeter; scalar_t__ biSizeImage; int biCompression; } ;
typedef int HDC ;
typedef int HBITMAP ;
typedef int DWORD ;
typedef TYPE_1__ BITMAPINFOHEADER ;
typedef int BITMAPINFO ;


 int BI_RGB ;
 int DIB_RGB_COLORS ;
 scalar_t__ GdipAlloc (int) ;
 int GetDIBits (int ,int ,int ,int,int *,int *,int ) ;
 int GetLastError () ;
 int ok (int,char*,int *,int,int,int ) ;

__attribute__((used)) static DWORD* GetBitmapPixelBuffer(HDC hdc, HBITMAP hbmp, int width, int height)
{
    BITMAPINFOHEADER bi;
    UINT lines = 0;
    DWORD *buffer = (DWORD *)GdipAlloc(width*height*4);

    bi.biSize = sizeof(BITMAPINFOHEADER);
    bi.biWidth = width;
    bi.biHeight = -height;
    bi.biPlanes = 1;
    bi.biBitCount = 32;
    bi.biCompression = BI_RGB;
    bi.biSizeImage = 0;
    bi.biXPelsPerMeter = 0;
    bi.biYPelsPerMeter = 0;
    bi.biClrUsed = 0;
    bi.biClrImportant = 0;

    lines = GetDIBits(hdc, hbmp, 0, height, buffer, (BITMAPINFO *)&bi, DIB_RGB_COLORS);
    ok(lines == height, "Expected GetDIBits:%p,%d->%d,%d\n", buffer, height, lines, GetLastError());

    return buffer;
}
