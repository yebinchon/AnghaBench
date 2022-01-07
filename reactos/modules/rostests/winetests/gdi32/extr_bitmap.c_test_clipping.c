
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int biSize; int biWidth; int biHeight; int biPlanes; int biCompression; int biBitCount; } ;
struct TYPE_5__ {int member_0; } ;
struct TYPE_7__ {TYPE_2__ bmiHeader; TYPE_1__ member_0; } ;
typedef int LPVOID ;
typedef int * HRGN ;
typedef int HDC ;
typedef int * HBITMAP ;
typedef int BOOL ;
typedef int BITMAPINFOHEADER ;
typedef TYPE_3__ BITMAPINFO ;


 int BITSPIXEL ;
 int BI_RGB ;
 int BitBlt (int ,int ,int ,int,int,int ,int,int,int ) ;
 int CreateCompatibleDC (int *) ;
 int * CreateDIBSection (int ,TYPE_3__*,int ,int *,int *,int ) ;
 int * CreateRectRgn (int ,int ,int ,int ) ;
 int DIB_RGB_COLORS ;
 int DeleteDC (int ) ;
 int DeleteObject (int *) ;
 int GetDeviceCaps (int ,int ) ;
 int SRCCOPY ;
 int SelectClipRgn (int ,int *) ;
 int SelectObject (int ,int *) ;
 int ok (int ,char*) ;

__attribute__((used)) static void test_clipping(void)
{
    HBITMAP bmpDst;
    HBITMAP bmpSrc;
    HRGN hRgn;
    LPVOID bits;
    BOOL result;

    HDC hdcDst = CreateCompatibleDC( ((void*)0) );
    HDC hdcSrc = CreateCompatibleDC( ((void*)0) );

    BITMAPINFO bmpinfo={{0}};
    bmpinfo.bmiHeader.biSize = sizeof(BITMAPINFOHEADER);
    bmpinfo.bmiHeader.biWidth = 100;
    bmpinfo.bmiHeader.biHeight = 100;
    bmpinfo.bmiHeader.biPlanes = 1;
    bmpinfo.bmiHeader.biBitCount = GetDeviceCaps( hdcDst, BITSPIXEL );
    bmpinfo.bmiHeader.biCompression = BI_RGB;

    bmpDst = CreateDIBSection( hdcDst, &bmpinfo, DIB_RGB_COLORS, &bits, ((void*)0), 0 );
    ok(bmpDst != ((void*)0), "Couldn't create destination bitmap\n");
    SelectObject( hdcDst, bmpDst );

    bmpSrc = CreateDIBSection( hdcSrc, &bmpinfo, DIB_RGB_COLORS, &bits, ((void*)0), 0 );
    ok(bmpSrc != ((void*)0), "Couldn't create source bitmap\n");
    SelectObject( hdcSrc, bmpSrc );

    result = BitBlt( hdcDst, 0, 0, 100, 100, hdcSrc, 100, 100, SRCCOPY );
    ok(result, "BitBlt failed\n");

    hRgn = CreateRectRgn( 0,0,0,0 );
    SelectClipRgn( hdcDst, hRgn );

    result = BitBlt( hdcDst, 0, 0, 100, 100, hdcSrc, 0, 0, SRCCOPY );
    ok(result, "BitBlt failed\n");

    DeleteObject( bmpDst );
    DeleteObject( bmpSrc );
    DeleteObject( hRgn );
    DeleteDC( hdcDst );
    DeleteDC( hdcSrc );
}
