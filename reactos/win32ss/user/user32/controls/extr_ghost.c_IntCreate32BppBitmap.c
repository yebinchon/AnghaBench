
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int bi ;
struct TYPE_5__ {int biSize; int biPlanes; int biBitCount; void* biHeight; void* biWidth; } ;
struct TYPE_6__ {TYPE_1__ bmiHeader; } ;
typedef int LPVOID ;
typedef void* INT ;
typedef scalar_t__ HDC ;
typedef int * HBITMAP ;
typedef int BITMAPINFOHEADER ;
typedef TYPE_2__ BITMAPINFO ;


 scalar_t__ CreateCompatibleDC (int *) ;
 int * CreateDIBSection (scalar_t__,TYPE_2__*,int ,int *,int *,int ) ;
 int DIB_RGB_COLORS ;
 int DeleteDC (scalar_t__) ;
 int ZeroMemory (TYPE_2__*,int) ;

__attribute__((used)) static HBITMAP
IntCreate32BppBitmap(INT cx, INT cy)
{
    HBITMAP hbm = ((void*)0);
    BITMAPINFO bi;
    HDC hdc;
    LPVOID pvBits;

    ZeroMemory(&bi, sizeof(bi));
    bi.bmiHeader.biSize = sizeof(BITMAPINFOHEADER);
    bi.bmiHeader.biWidth = cx;
    bi.bmiHeader.biHeight = cy;
    bi.bmiHeader.biPlanes = 1;
    bi.bmiHeader.biBitCount = 32;

    hdc = CreateCompatibleDC(((void*)0));
    if (hdc)
    {
        hbm = CreateDIBSection(hdc, &bi, DIB_RGB_COLORS, &pvBits, ((void*)0), 0);
        DeleteDC(hdc);
    }
    return hbm;
}
