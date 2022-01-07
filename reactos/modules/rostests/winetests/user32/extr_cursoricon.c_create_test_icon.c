
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int bitmapInfo ;
typedef int UINT32 ;
struct TYPE_7__ {int biSize; int biWidth; int biHeight; int biPlanes; int biBitCount; int biSizeImage; int biCompression; } ;
struct TYPE_9__ {TYPE_1__ bmiHeader; } ;
struct TYPE_8__ {int hbmMask; int hbmColor; scalar_t__ yHotspot; scalar_t__ xHotspot; int fIcon; } ;
typedef TYPE_2__ ICONINFO ;
typedef int * HICON ;
typedef int HDC ;
typedef scalar_t__ BOOL ;
typedef int BITMAPINFOHEADER ;
typedef TYPE_3__ BITMAPINFO ;


 int BI_RGB ;
 int CreateBitmap (int,int,int,int,int*) ;
 int CreateDIBSection (int ,TYPE_3__*,int ,void**,int *,int ) ;
 int * CreateIconIndirect (TYPE_2__*) ;
 int DIB_RGB_COLORS ;
 int DeleteObject (int ) ;
 int TRUE ;
 int memcpy (void*,int*,int) ;
 int memset (TYPE_3__*,int ,int) ;

__attribute__((used)) static HICON create_test_icon(HDC hdc, int width, int height, int bpp,
                              BOOL maskvalue, UINT32 *color, int colorSize)
{
    ICONINFO iconInfo;
    BITMAPINFO bitmapInfo;
    void *buffer = ((void*)0);
    UINT32 mask = maskvalue ? 0xFFFFFFFF : 0x00000000;

    memset(&bitmapInfo, 0, sizeof(bitmapInfo));
    bitmapInfo.bmiHeader.biSize = sizeof(BITMAPINFOHEADER);
    bitmapInfo.bmiHeader.biWidth = width;
    bitmapInfo.bmiHeader.biHeight = height;
    bitmapInfo.bmiHeader.biPlanes = 1;
    bitmapInfo.bmiHeader.biBitCount = bpp;
    bitmapInfo.bmiHeader.biCompression = BI_RGB;
    bitmapInfo.bmiHeader.biSizeImage = colorSize;

    iconInfo.fIcon = TRUE;
    iconInfo.xHotspot = 0;
    iconInfo.yHotspot = 0;

    iconInfo.hbmMask = CreateBitmap( width, height, 1, 1, &mask );
    if(!iconInfo.hbmMask) return ((void*)0);

    iconInfo.hbmColor = CreateDIBSection(hdc, &bitmapInfo, DIB_RGB_COLORS, &buffer, ((void*)0), 0);
    if(!iconInfo.hbmColor || !buffer)
    {
        DeleteObject(iconInfo.hbmMask);
        return ((void*)0);
    }

    memcpy(buffer, color, colorSize);

    return CreateIconIndirect(&iconInfo);
}
